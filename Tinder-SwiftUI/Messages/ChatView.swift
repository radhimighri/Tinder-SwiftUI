//
//  ChatView.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 09/03/2022.
//

import SwiftUI

struct ChatView: View {
    //MARK: - Properties
    @ObservedObject var chatMng: ChatManager
    @State private var typingMessage: String = ""
    @State private var scrollProxy: ScrollViewProxy? = nil
    
    private var person: Person
    
    init(person: Person) {
        self.person = person
        self.chatMng = ChatManager(person: person)
    }
    
    //MARK: - Body
    var body: some View {
        
        ZStack(alignment: .top) {
            
            VStack {
                
                Spacer().frame(height: 60)

                
                ScrollView(.vertical, showsIndicators: false, content: {
                    ScrollViewReader { proxy in
                      
                        LazyVStack {
                            ForEach(chatMng.messages.indices, id: \.self) { index in
                                let msg = chatMng.messages[index]
                                MessageView(message: msg)
                                    .id(index) // index the last msg to scroll into it
//                                    .animation(.easeIn)
//                                    .transition(.move(edge: msg.fromCurrentUser ? .trailing : .leading)) // if the msg is received it w'll come from the left else it come from the right
                            }
                        }
                        .onAppear {
                            scrollProxy = proxy //whenever this VStack appears we gonna we will just save this proxy value
                        }
                        
                    }
                })
                
                
                ZStack(alignment: .trailing) {
                    
                    Color.textFieldBG
                    
                    TextField("Type a message", text: $typingMessage)
                        .foregroundColor(Color.textPrimary)
                        .textFieldStyle(PlainTextFieldStyle())
                        .frame(height: 45)
                    .padding(.horizontal)
                    
                    
                    
                    Button {
                        sendMessage()
                    } label: {
                        Text("Send")
                    }
                    .padding(.horizontal)
                    .foregroundColor(typingMessage.isEmpty ? Color.textPrimary : Color.blue)
                    
                }
                .frame(height: 40)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom)
            }
            
            //Chat Header
            
            ChatViewHeader(name: person.name,
                           imageURL: person.imageURLs.first) {
                //Video btn action
                
            }
            
        }
        //hide the default navigation bar, to keep only our custom one
        .navigationTitle("")
        .navigationBarHidden(true)
        .onChange(of: chatMng.keyboardIsShowing, perform: { value in //when the keyboard status changes
            if value { //keyboard comes up
                // Scroll to the bottom
                scrollToBottom()
            }
        })
        .onChange(of: chatMng.messages, perform:  { _ in //when receiving or sending a new msg
            scrollToBottom()
        })
        
    }
    
    
    //MARK: - Helper funcs
    func sendMessage() {
        chatMng.sendMessage(Message(content: typingMessage))
        typingMessage = ""
    }
    
    func scrollToBottom() {
        withAnimation {
            scrollProxy?.scrollTo(chatMng.messages.count - 1, anchor: .bottom)
        }
    }
}


//MARK: - Preview
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.exemple)
            .previewDevice("iPhone 11")
            
    }
}

FROM Noob-stranger/andencento:alpine

#clonning repo 
RUN git clone https://github.com/Noob-Stranger/andencento.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["bash", "start.sh"]

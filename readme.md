Build the Image

docker build -t <username>/express-application . 

Run the Image

docker run -dit --restart unless-stopped -p 49610:8081 <username>/express-application

Save the image

docker push shamim56/express-application<:tag? default=latest>
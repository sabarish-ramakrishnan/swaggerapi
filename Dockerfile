#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat

#FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-nanoserver-1903 AS base
FROM mcr.microsoft.com/dotnet/core/sdk AS base

LABEL author="sabarish" version="1.0"

ENV DOTNET_USE_POLLING_FILE_WATCHER=1
ENV ASPNETCORE_URLS=http://*:8080

WORKDIR /app
EXPOSE 8080

# RUN dotnet restore "./swaggerapi.csproj"
# ENTRYPOINT ["dotnet", "swaggerapi.dll"]

CMD [ "/bin/bash","-c", "dotnet restore && dotnet run" ]
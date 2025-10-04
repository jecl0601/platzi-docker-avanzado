FROM mcr.microsoft.com/dotnet/sdk:7.0 as build

WORKDIR /src
COPY Ignore.csproj .
RUN dotnet restore
COPY . .

#RUN dotnet build "Ignore.csproj" -c Release -o /app/build

RUN dotnet publish "Ignore.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:7.0 as runtime
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "Ignore.dll"]
export interface Team {
    id: number;
    name: string;
    powerrank: number;
    r: number;
    g: number;
    b: number;
    rgb: string;

    //after adding fixture data to team table
    division: number;
    hteam: string;
    round: number;
    hteamtotal: number;
    hgls: number;
    h2pts: number;
    h1pts: number;
}

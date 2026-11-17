//
//  Marcador.swift
//  Contador
//
//  Created by MAC on 17/11/26.
//

import SwiftUI

struct Marcador: View {

    @State private var equipo1 = 0
    @State private var equipo2 = 0

    var body: some View {
        VStack(spacing: 30) {

            Text("Marcador")
                .font(.largeTitle)
                .bold()

            HStack(spacing: 20) {

                // Equipo 1
                VStack(spacing: 20) {

                    Text("Equipo 1")
                        .font(.headline)

                    Text("\(equipo1)")
                        .font(.system(size: 60, weight: .bold))
                        .foregroundStyle(.blue)

                    HStack(spacing: 10) {

                        Button {
                            equipo1 -= 1
                        } label: {
                            Image(systemName: "minus")
                                .frame(width: 40, height: 44)
                        }
                        .buttonStyle(.bordered)
                        .disabled(equipo1 == 0)

                        Button {
                            equipo1 += 1
                        } label: {
                            Image(systemName: "plus")
                                .frame(width: 40, height: 44)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .tint(.blue)
                }

                Text("vs")
                    .font(.title2)
                    .bold()

                // Equipo 2
                VStack(spacing: 20) {

                    Text("Equipo 2")
                        .font(.headline)

                    Text("\(equipo2)")
                        .font(.system(size: 60, weight: .bold))
                        .foregroundStyle(.orange)

                    HStack(spacing: 10) {

                        Button {
                            equipo2 -= 1
                        } label: {
                            Image(systemName: "minus")
                                .frame(width: 40, height: 44)
                        }
                        .buttonStyle(.bordered)
                        .disabled(equipo2 == 0)

                        Button {
                            equipo2 += 1
                        } label: {
                            Image(systemName: "plus")
                                .frame(width: 40, height: 44)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .tint(.orange)
                }
            }

            Button("Reiniciar", role: .destructive) {
                equipo1 = 0
                equipo2 = 0
            }

            // MENSAJE DEL GANADOR
            if equipo1 > equipo2 {
                Text("Va ganando Equipo 1")
                    .font(.headline)
            } else if equipo2 > equipo1 {
                Text("Va ganando Equipo 2")
                    .font(.headline)
            } else {
                Text("Empate")
                    .font(.headline)
            }

        }
        .padding()
    }
}

#Preview {
    Marcador()
}


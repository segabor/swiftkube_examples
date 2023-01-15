//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import ArgumentParser
import Foundation
import NIO
import SwiftkubeModel
import SwiftkubeClient


struct ServerVersion: AsyncParsableCommand {

	public static let configuration = CommandConfiguration(
		commandName: "version",
		abstract: "Print the client and server version information for the current context."
	)

	func run() async throws {
		// Initialize a new KubernetesClient
		guard let client = KubernetesClient(provider: .shared(MultiThreadedEventLoopGroup(numberOfThreads: 1))) else {
			throw SwiftkubectlError.configError("Error initializing client")
		}

		defer {
			try? client.syncShutdown()
		}

		do {
			let info = try await client.discoveryClient.serverVersion()
			print("Client Version: swiftkubectl \(Date())")
			print("Server Version: \(info)")
		} catch let error {
			switch error {
			case let SwiftkubeClientError.statusError(status):
				print(status)
			default:
				print(error)
			}
		}
	}
}

/*
 * generated by Xtext 2.13.0
 */
package com.tmtron.ex.xtext.lsp


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class ExDslStandaloneSetup extends ExDslStandaloneSetupGenerated {

	def static void doSetup() {
		new ExDslStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}
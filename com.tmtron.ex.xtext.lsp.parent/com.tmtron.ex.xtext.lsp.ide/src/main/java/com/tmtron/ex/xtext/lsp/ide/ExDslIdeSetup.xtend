/*
 * generated by Xtext 2.13.0
 */
package com.tmtron.ex.xtext.lsp.ide

import com.google.inject.Guice
import com.tmtron.ex.xtext.lsp.ExDslRuntimeModule
import com.tmtron.ex.xtext.lsp.ExDslStandaloneSetup
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class ExDslIdeSetup extends ExDslStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new ExDslRuntimeModule, new ExDslIdeModule))
	}
	
}
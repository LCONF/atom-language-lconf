describe "LCONF grammar", ->
    grammar = null

    beforeEach ->
        waitsForPromise ->
            atom.packages.activatePackage("language-lconf")

            runs ->
                grammar = atom.grammars.grammarForScopeName("source.lconf")

                it "parses the grammar", ->
                    expect(grammar).toBeDefined()
                    expect(grammar.scopeName).toBe "source.lconf"

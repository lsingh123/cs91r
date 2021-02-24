theory categorical_imperative_1 imports carmojones_DDL_completeness

begin

section "The Categorical Imperative"

subsection "Simple Formulation of the Kingdom of Ends"

text "This is my initial attempt at formalizing the concept of the Kingdom of Ends"

abbreviation ddlpermissable::"t\<Rightarrow>t" ("P_")
  where "(P A) \<equiv> (\<^bold>\<not>(O (\<^bold>\<not>A)))"
\<comment> \<open>Will be useful when discussing the categorical imperative\<close>


lemma kingdom_of_ends_1:
  shows "\<Turnstile> ((O A) \<^bold>\<rightarrow> (\<box> (P A)))"
  by (metis O_diamond ax_5b)
\<comment> \<open>One interpretation of the categorical imperative is that something is obligatory only if it is permissible in every ideal world\<close>
\<comment> \<open>This formulation mirrors the kingdom of ends.\<close>
\<comment> \<open>This formulation is already a theorem of carmo and jones' DDL!.\<close>
\<comment> \<open>It can be shown using the O diamond rule, which just says that obligatory things must be possible.\<close>
\<comment> \<open>There are two possibilities: either the logic is already quite powerful OR this formulation is ``empty".\<close>

lemma kingdom_of_ends_2:
  shows "\<Turnstile> ((\<box> (P A)) \<^bold>\<rightarrow> (O A))"
  by (metis O_diamond ax_5a ax_5b ax_5c)
\<comment> \<open>Notice also that ideally, this relationship does not hold in the reverse direction.\<close>
\<comment> \<open>Plenty of things are necessarily permissible (drinking water) but not obligatory.\<close>
\<comment> \<open>Very strange that this is a theorem in this logic.....\<close>
\<comment> \<open>That being said, Isabelle seems quite upset with this proof and is very slow to resconstruct it\<close>

end








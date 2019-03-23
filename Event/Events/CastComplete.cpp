#include "CastComplete.h"

#include "Engine.h"
#include "SpellCastingTime.h"

CastComplete::CastComplete(SpellCastingTime *spell, const double timestamp) {
    this->spell = spell;
    this->priority = timestamp;
    this->name = "CastComplete";
}

void CastComplete::act() {
    spell->complete_cast();
}

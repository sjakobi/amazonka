{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuthDecision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuthDecision
  ( AuthDecision
      ( ..,
        AuthDecisionALLOWED,
        AuthDecisionEXPLICITDENY,
        AuthDecisionIMPLICITDENY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthDecision = AuthDecision'
  { fromAuthDecision ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AuthDecisionALLOWED :: AuthDecision
pattern AuthDecisionALLOWED = AuthDecision' "ALLOWED"

pattern AuthDecisionEXPLICITDENY :: AuthDecision
pattern AuthDecisionEXPLICITDENY = AuthDecision' "EXPLICIT_DENY"

pattern AuthDecisionIMPLICITDENY :: AuthDecision
pattern AuthDecisionIMPLICITDENY = AuthDecision' "IMPLICIT_DENY"

{-# COMPLETE
  AuthDecisionALLOWED,
  AuthDecisionEXPLICITDENY,
  AuthDecisionIMPLICITDENY,
  AuthDecision'
  #-}

instance Prelude.FromText AuthDecision where
  parser = AuthDecision' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthDecision where
  toText (AuthDecision' x) = x

instance Prelude.Hashable AuthDecision

instance Prelude.NFData AuthDecision

instance Prelude.ToByteString AuthDecision

instance Prelude.ToQuery AuthDecision

instance Prelude.ToHeader AuthDecision

instance Prelude.FromJSON AuthDecision where
  parseJSON = Prelude.parseJSONText "AuthDecision"

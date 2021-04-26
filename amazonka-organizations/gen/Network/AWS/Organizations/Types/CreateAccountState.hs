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
-- Module      : Network.AWS.Organizations.Types.CreateAccountState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.CreateAccountState
  ( CreateAccountState
      ( ..,
        CreateAccountStateFAILED,
        CreateAccountStateINPROGRESS,
        CreateAccountStateSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CreateAccountState = CreateAccountState'
  { fromCreateAccountState ::
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

pattern CreateAccountStateFAILED :: CreateAccountState
pattern CreateAccountStateFAILED = CreateAccountState' "FAILED"

pattern CreateAccountStateINPROGRESS :: CreateAccountState
pattern CreateAccountStateINPROGRESS = CreateAccountState' "IN_PROGRESS"

pattern CreateAccountStateSUCCEEDED :: CreateAccountState
pattern CreateAccountStateSUCCEEDED = CreateAccountState' "SUCCEEDED"

{-# COMPLETE
  CreateAccountStateFAILED,
  CreateAccountStateINPROGRESS,
  CreateAccountStateSUCCEEDED,
  CreateAccountState'
  #-}

instance Prelude.FromText CreateAccountState where
  parser = CreateAccountState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CreateAccountState where
  toText (CreateAccountState' x) = x

instance Prelude.Hashable CreateAccountState

instance Prelude.NFData CreateAccountState

instance Prelude.ToByteString CreateAccountState

instance Prelude.ToQuery CreateAccountState

instance Prelude.ToHeader CreateAccountState

instance Prelude.ToJSON CreateAccountState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CreateAccountState where
  parseJSON = Prelude.parseJSONText "CreateAccountState"

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
-- Module      : Network.AWS.SSM.Types.AutomationSubtype
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationSubtype
  ( AutomationSubtype
      ( ..,
        AutomationSubtypeChangeRequest
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutomationSubtype = AutomationSubtype'
  { fromAutomationSubtype ::
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

pattern AutomationSubtypeChangeRequest :: AutomationSubtype
pattern AutomationSubtypeChangeRequest = AutomationSubtype' "ChangeRequest"

{-# COMPLETE
  AutomationSubtypeChangeRequest,
  AutomationSubtype'
  #-}

instance Prelude.FromText AutomationSubtype where
  parser = AutomationSubtype' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutomationSubtype where
  toText (AutomationSubtype' x) = x

instance Prelude.Hashable AutomationSubtype

instance Prelude.NFData AutomationSubtype

instance Prelude.ToByteString AutomationSubtype

instance Prelude.ToQuery AutomationSubtype

instance Prelude.ToHeader AutomationSubtype

instance Prelude.FromJSON AutomationSubtype where
  parseJSON = Prelude.parseJSONText "AutomationSubtype"

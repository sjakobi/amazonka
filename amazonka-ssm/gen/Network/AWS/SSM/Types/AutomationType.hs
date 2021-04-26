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
-- Module      : Network.AWS.SSM.Types.AutomationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationType
  ( AutomationType
      ( ..,
        AutomationTypeCrossAccount,
        AutomationTypeLocal
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutomationType = AutomationType'
  { fromAutomationType ::
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

pattern AutomationTypeCrossAccount :: AutomationType
pattern AutomationTypeCrossAccount = AutomationType' "CrossAccount"

pattern AutomationTypeLocal :: AutomationType
pattern AutomationTypeLocal = AutomationType' "Local"

{-# COMPLETE
  AutomationTypeCrossAccount,
  AutomationTypeLocal,
  AutomationType'
  #-}

instance Prelude.FromText AutomationType where
  parser = AutomationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutomationType where
  toText (AutomationType' x) = x

instance Prelude.Hashable AutomationType

instance Prelude.NFData AutomationType

instance Prelude.ToByteString AutomationType

instance Prelude.ToQuery AutomationType

instance Prelude.ToHeader AutomationType

instance Prelude.FromJSON AutomationType where
  parseJSON = Prelude.parseJSONText "AutomationType"

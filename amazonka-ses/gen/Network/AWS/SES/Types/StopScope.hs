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
-- Module      : Network.AWS.SES.Types.StopScope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.StopScope
  ( StopScope
      ( ..,
        StopScopeRuleSet
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StopScope = StopScope'
  { fromStopScope ::
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

pattern StopScopeRuleSet :: StopScope
pattern StopScopeRuleSet = StopScope' "RuleSet"

{-# COMPLETE
  StopScopeRuleSet,
  StopScope'
  #-}

instance Prelude.FromText StopScope where
  parser = StopScope' Prelude.<$> Prelude.takeText

instance Prelude.ToText StopScope where
  toText (StopScope' x) = x

instance Prelude.Hashable StopScope

instance Prelude.NFData StopScope

instance Prelude.ToByteString StopScope

instance Prelude.ToQuery StopScope

instance Prelude.ToHeader StopScope

instance Prelude.FromXML StopScope where
  parseXML = Prelude.parseXMLText "StopScope"

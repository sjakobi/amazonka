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
-- Module      : Network.AWS.S3.Types.FilterRuleName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.FilterRuleName
  ( FilterRuleName
      ( ..,
        FilterRuleNamePrefix,
        FilterRuleNameSuffix
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype FilterRuleName = FilterRuleName'
  { fromFilterRuleName ::
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

pattern FilterRuleNamePrefix :: FilterRuleName
pattern FilterRuleNamePrefix = FilterRuleName' "prefix"

pattern FilterRuleNameSuffix :: FilterRuleName
pattern FilterRuleNameSuffix = FilterRuleName' "suffix"

{-# COMPLETE
  FilterRuleNamePrefix,
  FilterRuleNameSuffix,
  FilterRuleName'
  #-}

instance Prelude.FromText FilterRuleName where
  parser = FilterRuleName' Prelude.<$> Prelude.takeText

instance Prelude.ToText FilterRuleName where
  toText (FilterRuleName' x) = x

instance Prelude.Hashable FilterRuleName

instance Prelude.NFData FilterRuleName

instance Prelude.ToByteString FilterRuleName

instance Prelude.ToQuery FilterRuleName

instance Prelude.ToHeader FilterRuleName

instance Prelude.FromXML FilterRuleName where
  parseXML = Prelude.parseXMLText "FilterRuleName"

instance Prelude.ToXML FilterRuleName where
  toXML = Prelude.toXMLText

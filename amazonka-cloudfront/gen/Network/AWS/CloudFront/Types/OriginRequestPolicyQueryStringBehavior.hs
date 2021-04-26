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
-- Module      : Network.AWS.CloudFront.Types.OriginRequestPolicyQueryStringBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginRequestPolicyQueryStringBehavior
  ( OriginRequestPolicyQueryStringBehavior
      ( ..,
        OriginRequestPolicyQueryStringBehaviorAll,
        OriginRequestPolicyQueryStringBehaviorNone,
        OriginRequestPolicyQueryStringBehaviorWhitelist
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OriginRequestPolicyQueryStringBehavior = OriginRequestPolicyQueryStringBehavior'
  { fromOriginRequestPolicyQueryStringBehavior ::
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

pattern OriginRequestPolicyQueryStringBehaviorAll :: OriginRequestPolicyQueryStringBehavior
pattern OriginRequestPolicyQueryStringBehaviorAll = OriginRequestPolicyQueryStringBehavior' "all"

pattern OriginRequestPolicyQueryStringBehaviorNone :: OriginRequestPolicyQueryStringBehavior
pattern OriginRequestPolicyQueryStringBehaviorNone = OriginRequestPolicyQueryStringBehavior' "none"

pattern OriginRequestPolicyQueryStringBehaviorWhitelist :: OriginRequestPolicyQueryStringBehavior
pattern OriginRequestPolicyQueryStringBehaviorWhitelist = OriginRequestPolicyQueryStringBehavior' "whitelist"

{-# COMPLETE
  OriginRequestPolicyQueryStringBehaviorAll,
  OriginRequestPolicyQueryStringBehaviorNone,
  OriginRequestPolicyQueryStringBehaviorWhitelist,
  OriginRequestPolicyQueryStringBehavior'
  #-}

instance Prelude.FromText OriginRequestPolicyQueryStringBehavior where
  parser = OriginRequestPolicyQueryStringBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText OriginRequestPolicyQueryStringBehavior where
  toText (OriginRequestPolicyQueryStringBehavior' x) = x

instance Prelude.Hashable OriginRequestPolicyQueryStringBehavior

instance Prelude.NFData OriginRequestPolicyQueryStringBehavior

instance Prelude.ToByteString OriginRequestPolicyQueryStringBehavior

instance Prelude.ToQuery OriginRequestPolicyQueryStringBehavior

instance Prelude.ToHeader OriginRequestPolicyQueryStringBehavior

instance Prelude.FromXML OriginRequestPolicyQueryStringBehavior where
  parseXML = Prelude.parseXMLText "OriginRequestPolicyQueryStringBehavior"

instance Prelude.ToXML OriginRequestPolicyQueryStringBehavior where
  toXML = Prelude.toXMLText

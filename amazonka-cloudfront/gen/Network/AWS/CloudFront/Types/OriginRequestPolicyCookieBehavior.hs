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
-- Module      : Network.AWS.CloudFront.Types.OriginRequestPolicyCookieBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginRequestPolicyCookieBehavior
  ( OriginRequestPolicyCookieBehavior
      ( ..,
        OriginRequestPolicyCookieBehaviorAll,
        OriginRequestPolicyCookieBehaviorNone,
        OriginRequestPolicyCookieBehaviorWhitelist
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OriginRequestPolicyCookieBehavior = OriginRequestPolicyCookieBehavior'
  { fromOriginRequestPolicyCookieBehavior ::
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

pattern OriginRequestPolicyCookieBehaviorAll :: OriginRequestPolicyCookieBehavior
pattern OriginRequestPolicyCookieBehaviorAll = OriginRequestPolicyCookieBehavior' "all"

pattern OriginRequestPolicyCookieBehaviorNone :: OriginRequestPolicyCookieBehavior
pattern OriginRequestPolicyCookieBehaviorNone = OriginRequestPolicyCookieBehavior' "none"

pattern OriginRequestPolicyCookieBehaviorWhitelist :: OriginRequestPolicyCookieBehavior
pattern OriginRequestPolicyCookieBehaviorWhitelist = OriginRequestPolicyCookieBehavior' "whitelist"

{-# COMPLETE
  OriginRequestPolicyCookieBehaviorAll,
  OriginRequestPolicyCookieBehaviorNone,
  OriginRequestPolicyCookieBehaviorWhitelist,
  OriginRequestPolicyCookieBehavior'
  #-}

instance Prelude.FromText OriginRequestPolicyCookieBehavior where
  parser = OriginRequestPolicyCookieBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText OriginRequestPolicyCookieBehavior where
  toText (OriginRequestPolicyCookieBehavior' x) = x

instance Prelude.Hashable OriginRequestPolicyCookieBehavior

instance Prelude.NFData OriginRequestPolicyCookieBehavior

instance Prelude.ToByteString OriginRequestPolicyCookieBehavior

instance Prelude.ToQuery OriginRequestPolicyCookieBehavior

instance Prelude.ToHeader OriginRequestPolicyCookieBehavior

instance Prelude.FromXML OriginRequestPolicyCookieBehavior where
  parseXML = Prelude.parseXMLText "OriginRequestPolicyCookieBehavior"

instance Prelude.ToXML OriginRequestPolicyCookieBehavior where
  toXML = Prelude.toXMLText

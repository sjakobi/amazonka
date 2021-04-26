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
-- Module      : Network.AWS.CloudFront.Types.OriginRequestPolicyHeaderBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginRequestPolicyHeaderBehavior
  ( OriginRequestPolicyHeaderBehavior
      ( ..,
        OriginRequestPolicyHeaderBehaviorAllViewer,
        OriginRequestPolicyHeaderBehaviorAllViewerAndWhitelistCloudFront,
        OriginRequestPolicyHeaderBehaviorNone,
        OriginRequestPolicyHeaderBehaviorWhitelist
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OriginRequestPolicyHeaderBehavior = OriginRequestPolicyHeaderBehavior'
  { fromOriginRequestPolicyHeaderBehavior ::
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

pattern OriginRequestPolicyHeaderBehaviorAllViewer :: OriginRequestPolicyHeaderBehavior
pattern OriginRequestPolicyHeaderBehaviorAllViewer = OriginRequestPolicyHeaderBehavior' "allViewer"

pattern OriginRequestPolicyHeaderBehaviorAllViewerAndWhitelistCloudFront :: OriginRequestPolicyHeaderBehavior
pattern OriginRequestPolicyHeaderBehaviorAllViewerAndWhitelistCloudFront = OriginRequestPolicyHeaderBehavior' "allViewerAndWhitelistCloudFront"

pattern OriginRequestPolicyHeaderBehaviorNone :: OriginRequestPolicyHeaderBehavior
pattern OriginRequestPolicyHeaderBehaviorNone = OriginRequestPolicyHeaderBehavior' "none"

pattern OriginRequestPolicyHeaderBehaviorWhitelist :: OriginRequestPolicyHeaderBehavior
pattern OriginRequestPolicyHeaderBehaviorWhitelist = OriginRequestPolicyHeaderBehavior' "whitelist"

{-# COMPLETE
  OriginRequestPolicyHeaderBehaviorAllViewer,
  OriginRequestPolicyHeaderBehaviorAllViewerAndWhitelistCloudFront,
  OriginRequestPolicyHeaderBehaviorNone,
  OriginRequestPolicyHeaderBehaviorWhitelist,
  OriginRequestPolicyHeaderBehavior'
  #-}

instance Prelude.FromText OriginRequestPolicyHeaderBehavior where
  parser = OriginRequestPolicyHeaderBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText OriginRequestPolicyHeaderBehavior where
  toText (OriginRequestPolicyHeaderBehavior' x) = x

instance Prelude.Hashable OriginRequestPolicyHeaderBehavior

instance Prelude.NFData OriginRequestPolicyHeaderBehavior

instance Prelude.ToByteString OriginRequestPolicyHeaderBehavior

instance Prelude.ToQuery OriginRequestPolicyHeaderBehavior

instance Prelude.ToHeader OriginRequestPolicyHeaderBehavior

instance Prelude.FromXML OriginRequestPolicyHeaderBehavior where
  parseXML = Prelude.parseXMLText "OriginRequestPolicyHeaderBehavior"

instance Prelude.ToXML OriginRequestPolicyHeaderBehavior where
  toXML = Prelude.toXMLText

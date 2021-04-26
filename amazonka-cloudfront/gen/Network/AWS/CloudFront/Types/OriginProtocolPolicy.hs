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
-- Module      : Network.AWS.CloudFront.Types.OriginProtocolPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginProtocolPolicy
  ( OriginProtocolPolicy
      ( ..,
        OriginProtocolPolicyHttpOnly,
        OriginProtocolPolicyHttpsOnly,
        OriginProtocolPolicyMatchViewer
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OriginProtocolPolicy = OriginProtocolPolicy'
  { fromOriginProtocolPolicy ::
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

pattern OriginProtocolPolicyHttpOnly :: OriginProtocolPolicy
pattern OriginProtocolPolicyHttpOnly = OriginProtocolPolicy' "http-only"

pattern OriginProtocolPolicyHttpsOnly :: OriginProtocolPolicy
pattern OriginProtocolPolicyHttpsOnly = OriginProtocolPolicy' "https-only"

pattern OriginProtocolPolicyMatchViewer :: OriginProtocolPolicy
pattern OriginProtocolPolicyMatchViewer = OriginProtocolPolicy' "match-viewer"

{-# COMPLETE
  OriginProtocolPolicyHttpOnly,
  OriginProtocolPolicyHttpsOnly,
  OriginProtocolPolicyMatchViewer,
  OriginProtocolPolicy'
  #-}

instance Prelude.FromText OriginProtocolPolicy where
  parser = OriginProtocolPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText OriginProtocolPolicy where
  toText (OriginProtocolPolicy' x) = x

instance Prelude.Hashable OriginProtocolPolicy

instance Prelude.NFData OriginProtocolPolicy

instance Prelude.ToByteString OriginProtocolPolicy

instance Prelude.ToQuery OriginProtocolPolicy

instance Prelude.ToHeader OriginProtocolPolicy

instance Prelude.FromXML OriginProtocolPolicy where
  parseXML = Prelude.parseXMLText "OriginProtocolPolicy"

instance Prelude.ToXML OriginProtocolPolicy where
  toXML = Prelude.toXMLText

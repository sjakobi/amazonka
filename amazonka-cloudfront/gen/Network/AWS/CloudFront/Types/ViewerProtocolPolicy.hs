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
-- Module      : Network.AWS.CloudFront.Types.ViewerProtocolPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.ViewerProtocolPolicy
  ( ViewerProtocolPolicy
      ( ..,
        ViewerProtocolPolicyAllowAll,
        ViewerProtocolPolicyHttpsOnly,
        ViewerProtocolPolicyRedirectToHttps
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ViewerProtocolPolicy = ViewerProtocolPolicy'
  { fromViewerProtocolPolicy ::
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

pattern ViewerProtocolPolicyAllowAll :: ViewerProtocolPolicy
pattern ViewerProtocolPolicyAllowAll = ViewerProtocolPolicy' "allow-all"

pattern ViewerProtocolPolicyHttpsOnly :: ViewerProtocolPolicy
pattern ViewerProtocolPolicyHttpsOnly = ViewerProtocolPolicy' "https-only"

pattern ViewerProtocolPolicyRedirectToHttps :: ViewerProtocolPolicy
pattern ViewerProtocolPolicyRedirectToHttps = ViewerProtocolPolicy' "redirect-to-https"

{-# COMPLETE
  ViewerProtocolPolicyAllowAll,
  ViewerProtocolPolicyHttpsOnly,
  ViewerProtocolPolicyRedirectToHttps,
  ViewerProtocolPolicy'
  #-}

instance Prelude.FromText ViewerProtocolPolicy where
  parser = ViewerProtocolPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ViewerProtocolPolicy where
  toText (ViewerProtocolPolicy' x) = x

instance Prelude.Hashable ViewerProtocolPolicy

instance Prelude.NFData ViewerProtocolPolicy

instance Prelude.ToByteString ViewerProtocolPolicy

instance Prelude.ToQuery ViewerProtocolPolicy

instance Prelude.ToHeader ViewerProtocolPolicy

instance Prelude.FromXML ViewerProtocolPolicy where
  parseXML = Prelude.parseXMLText "ViewerProtocolPolicy"

instance Prelude.ToXML ViewerProtocolPolicy where
  toXML = Prelude.toXMLText

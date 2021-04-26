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
-- Module      : Network.AWS.EC2.Types.VpcCidrBlockStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpcCidrBlockStateCode
  ( VpcCidrBlockStateCode
      ( ..,
        VpcCidrBlockStateCodeAssociated,
        VpcCidrBlockStateCodeAssociating,
        VpcCidrBlockStateCodeDisassociated,
        VpcCidrBlockStateCodeDisassociating,
        VpcCidrBlockStateCodeFailed,
        VpcCidrBlockStateCodeFailing
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VpcCidrBlockStateCode = VpcCidrBlockStateCode'
  { fromVpcCidrBlockStateCode ::
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

pattern VpcCidrBlockStateCodeAssociated :: VpcCidrBlockStateCode
pattern VpcCidrBlockStateCodeAssociated = VpcCidrBlockStateCode' "associated"

pattern VpcCidrBlockStateCodeAssociating :: VpcCidrBlockStateCode
pattern VpcCidrBlockStateCodeAssociating = VpcCidrBlockStateCode' "associating"

pattern VpcCidrBlockStateCodeDisassociated :: VpcCidrBlockStateCode
pattern VpcCidrBlockStateCodeDisassociated = VpcCidrBlockStateCode' "disassociated"

pattern VpcCidrBlockStateCodeDisassociating :: VpcCidrBlockStateCode
pattern VpcCidrBlockStateCodeDisassociating = VpcCidrBlockStateCode' "disassociating"

pattern VpcCidrBlockStateCodeFailed :: VpcCidrBlockStateCode
pattern VpcCidrBlockStateCodeFailed = VpcCidrBlockStateCode' "failed"

pattern VpcCidrBlockStateCodeFailing :: VpcCidrBlockStateCode
pattern VpcCidrBlockStateCodeFailing = VpcCidrBlockStateCode' "failing"

{-# COMPLETE
  VpcCidrBlockStateCodeAssociated,
  VpcCidrBlockStateCodeAssociating,
  VpcCidrBlockStateCodeDisassociated,
  VpcCidrBlockStateCodeDisassociating,
  VpcCidrBlockStateCodeFailed,
  VpcCidrBlockStateCodeFailing,
  VpcCidrBlockStateCode'
  #-}

instance Prelude.FromText VpcCidrBlockStateCode where
  parser = VpcCidrBlockStateCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpcCidrBlockStateCode where
  toText (VpcCidrBlockStateCode' x) = x

instance Prelude.Hashable VpcCidrBlockStateCode

instance Prelude.NFData VpcCidrBlockStateCode

instance Prelude.ToByteString VpcCidrBlockStateCode

instance Prelude.ToQuery VpcCidrBlockStateCode

instance Prelude.ToHeader VpcCidrBlockStateCode

instance Prelude.FromXML VpcCidrBlockStateCode where
  parseXML = Prelude.parseXMLText "VpcCidrBlockStateCode"

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
-- Module      : Network.AWS.EC2.Types.SubnetCidrBlockStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SubnetCidrBlockStateCode
  ( SubnetCidrBlockStateCode
      ( ..,
        SubnetCidrBlockStateCodeAssociated,
        SubnetCidrBlockStateCodeAssociating,
        SubnetCidrBlockStateCodeDisassociated,
        SubnetCidrBlockStateCodeDisassociating,
        SubnetCidrBlockStateCodeFailed,
        SubnetCidrBlockStateCodeFailing
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SubnetCidrBlockStateCode = SubnetCidrBlockStateCode'
  { fromSubnetCidrBlockStateCode ::
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

pattern SubnetCidrBlockStateCodeAssociated :: SubnetCidrBlockStateCode
pattern SubnetCidrBlockStateCodeAssociated = SubnetCidrBlockStateCode' "associated"

pattern SubnetCidrBlockStateCodeAssociating :: SubnetCidrBlockStateCode
pattern SubnetCidrBlockStateCodeAssociating = SubnetCidrBlockStateCode' "associating"

pattern SubnetCidrBlockStateCodeDisassociated :: SubnetCidrBlockStateCode
pattern SubnetCidrBlockStateCodeDisassociated = SubnetCidrBlockStateCode' "disassociated"

pattern SubnetCidrBlockStateCodeDisassociating :: SubnetCidrBlockStateCode
pattern SubnetCidrBlockStateCodeDisassociating = SubnetCidrBlockStateCode' "disassociating"

pattern SubnetCidrBlockStateCodeFailed :: SubnetCidrBlockStateCode
pattern SubnetCidrBlockStateCodeFailed = SubnetCidrBlockStateCode' "failed"

pattern SubnetCidrBlockStateCodeFailing :: SubnetCidrBlockStateCode
pattern SubnetCidrBlockStateCodeFailing = SubnetCidrBlockStateCode' "failing"

{-# COMPLETE
  SubnetCidrBlockStateCodeAssociated,
  SubnetCidrBlockStateCodeAssociating,
  SubnetCidrBlockStateCodeDisassociated,
  SubnetCidrBlockStateCodeDisassociating,
  SubnetCidrBlockStateCodeFailed,
  SubnetCidrBlockStateCodeFailing,
  SubnetCidrBlockStateCode'
  #-}

instance Prelude.FromText SubnetCidrBlockStateCode where
  parser = SubnetCidrBlockStateCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText SubnetCidrBlockStateCode where
  toText (SubnetCidrBlockStateCode' x) = x

instance Prelude.Hashable SubnetCidrBlockStateCode

instance Prelude.NFData SubnetCidrBlockStateCode

instance Prelude.ToByteString SubnetCidrBlockStateCode

instance Prelude.ToQuery SubnetCidrBlockStateCode

instance Prelude.ToHeader SubnetCidrBlockStateCode

instance Prelude.FromXML SubnetCidrBlockStateCode where
  parseXML = Prelude.parseXMLText "SubnetCidrBlockStateCode"

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
-- Module      : Network.AWS.EC2.Types.SnapshotAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SnapshotAttributeName
  ( SnapshotAttributeName
      ( ..,
        SnapshotAttributeNameCreateVolumePermission,
        SnapshotAttributeNameProductCodes
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SnapshotAttributeName = SnapshotAttributeName'
  { fromSnapshotAttributeName ::
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

pattern SnapshotAttributeNameCreateVolumePermission :: SnapshotAttributeName
pattern SnapshotAttributeNameCreateVolumePermission = SnapshotAttributeName' "createVolumePermission"

pattern SnapshotAttributeNameProductCodes :: SnapshotAttributeName
pattern SnapshotAttributeNameProductCodes = SnapshotAttributeName' "productCodes"

{-# COMPLETE
  SnapshotAttributeNameCreateVolumePermission,
  SnapshotAttributeNameProductCodes,
  SnapshotAttributeName'
  #-}

instance Prelude.FromText SnapshotAttributeName where
  parser = SnapshotAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText SnapshotAttributeName where
  toText (SnapshotAttributeName' x) = x

instance Prelude.Hashable SnapshotAttributeName

instance Prelude.NFData SnapshotAttributeName

instance Prelude.ToByteString SnapshotAttributeName

instance Prelude.ToQuery SnapshotAttributeName

instance Prelude.ToHeader SnapshotAttributeName

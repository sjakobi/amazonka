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
-- Module      : Network.AWS.SSM.Types.ResourceDataSyncS3Format
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ResourceDataSyncS3Format
  ( ResourceDataSyncS3Format
      ( ..,
        ResourceDataSyncS3FormatJsonSerDe
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceDataSyncS3Format = ResourceDataSyncS3Format'
  { fromResourceDataSyncS3Format ::
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

pattern ResourceDataSyncS3FormatJsonSerDe :: ResourceDataSyncS3Format
pattern ResourceDataSyncS3FormatJsonSerDe = ResourceDataSyncS3Format' "JsonSerDe"

{-# COMPLETE
  ResourceDataSyncS3FormatJsonSerDe,
  ResourceDataSyncS3Format'
  #-}

instance Prelude.FromText ResourceDataSyncS3Format where
  parser = ResourceDataSyncS3Format' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceDataSyncS3Format where
  toText (ResourceDataSyncS3Format' x) = x

instance Prelude.Hashable ResourceDataSyncS3Format

instance Prelude.NFData ResourceDataSyncS3Format

instance Prelude.ToByteString ResourceDataSyncS3Format

instance Prelude.ToQuery ResourceDataSyncS3Format

instance Prelude.ToHeader ResourceDataSyncS3Format

instance Prelude.ToJSON ResourceDataSyncS3Format where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ResourceDataSyncS3Format where
  parseJSON = Prelude.parseJSONText "ResourceDataSyncS3Format"

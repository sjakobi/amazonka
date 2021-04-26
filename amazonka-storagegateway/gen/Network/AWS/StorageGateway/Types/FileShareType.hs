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
-- Module      : Network.AWS.StorageGateway.Types.FileShareType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.FileShareType
  ( FileShareType
      ( ..,
        FileShareTypeNFS,
        FileShareTypeSMB
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of the file share.
newtype FileShareType = FileShareType'
  { fromFileShareType ::
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

pattern FileShareTypeNFS :: FileShareType
pattern FileShareTypeNFS = FileShareType' "NFS"

pattern FileShareTypeSMB :: FileShareType
pattern FileShareTypeSMB = FileShareType' "SMB"

{-# COMPLETE
  FileShareTypeNFS,
  FileShareTypeSMB,
  FileShareType'
  #-}

instance Prelude.FromText FileShareType where
  parser = FileShareType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FileShareType where
  toText (FileShareType' x) = x

instance Prelude.Hashable FileShareType

instance Prelude.NFData FileShareType

instance Prelude.ToByteString FileShareType

instance Prelude.ToQuery FileShareType

instance Prelude.ToHeader FileShareType

instance Prelude.FromJSON FileShareType where
  parseJSON = Prelude.parseJSONText "FileShareType"

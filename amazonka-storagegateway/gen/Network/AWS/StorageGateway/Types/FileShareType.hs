{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Nfs,
        Smb
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of the file share.
data FileShareType = FileShareType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Nfs :: FileShareType
pattern Nfs = FileShareType' "NFS"

pattern Smb :: FileShareType
pattern Smb = FileShareType' "SMB"

{-# COMPLETE
  Nfs,
  Smb,
  FileShareType'
  #-}

instance FromText FileShareType where
  parser = (FileShareType' . mk) <$> takeText

instance ToText FileShareType where
  toText (FileShareType' ci) = original ci

instance Hashable FileShareType

instance NFData FileShareType

instance ToByteString FileShareType

instance ToQuery FileShareType

instance ToHeader FileShareType

instance FromJSON FileShareType where
  parseJSON = parseJSONText "FileShareType"

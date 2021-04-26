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
-- Module      : Network.AWS.DirectoryService.Types.DirectoryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DirectoryType
  ( DirectoryType
      ( ..,
        DirectoryTypeADConnector,
        DirectoryTypeMicrosoftAD,
        DirectoryTypeSharedMicrosoftAD,
        DirectoryTypeSimpleAD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectoryType = DirectoryType'
  { fromDirectoryType ::
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

pattern DirectoryTypeADConnector :: DirectoryType
pattern DirectoryTypeADConnector = DirectoryType' "ADConnector"

pattern DirectoryTypeMicrosoftAD :: DirectoryType
pattern DirectoryTypeMicrosoftAD = DirectoryType' "MicrosoftAD"

pattern DirectoryTypeSharedMicrosoftAD :: DirectoryType
pattern DirectoryTypeSharedMicrosoftAD = DirectoryType' "SharedMicrosoftAD"

pattern DirectoryTypeSimpleAD :: DirectoryType
pattern DirectoryTypeSimpleAD = DirectoryType' "SimpleAD"

{-# COMPLETE
  DirectoryTypeADConnector,
  DirectoryTypeMicrosoftAD,
  DirectoryTypeSharedMicrosoftAD,
  DirectoryTypeSimpleAD,
  DirectoryType'
  #-}

instance Prelude.FromText DirectoryType where
  parser = DirectoryType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectoryType where
  toText (DirectoryType' x) = x

instance Prelude.Hashable DirectoryType

instance Prelude.NFData DirectoryType

instance Prelude.ToByteString DirectoryType

instance Prelude.ToQuery DirectoryType

instance Prelude.ToHeader DirectoryType

instance Prelude.FromJSON DirectoryType where
  parseJSON = Prelude.parseJSONText "DirectoryType"

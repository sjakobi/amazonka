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
-- Module      : Network.AWS.DirectoryService.Types.DirectorySize
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DirectorySize
  ( DirectorySize
      ( ..,
        DirectorySizeLarge,
        DirectorySizeSmall
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectorySize = DirectorySize'
  { fromDirectorySize ::
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

pattern DirectorySizeLarge :: DirectorySize
pattern DirectorySizeLarge = DirectorySize' "Large"

pattern DirectorySizeSmall :: DirectorySize
pattern DirectorySizeSmall = DirectorySize' "Small"

{-# COMPLETE
  DirectorySizeLarge,
  DirectorySizeSmall,
  DirectorySize'
  #-}

instance Prelude.FromText DirectorySize where
  parser = DirectorySize' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectorySize where
  toText (DirectorySize' x) = x

instance Prelude.Hashable DirectorySize

instance Prelude.NFData DirectorySize

instance Prelude.ToByteString DirectorySize

instance Prelude.ToQuery DirectorySize

instance Prelude.ToHeader DirectorySize

instance Prelude.ToJSON DirectorySize where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DirectorySize where
  parseJSON = Prelude.parseJSONText "DirectorySize"

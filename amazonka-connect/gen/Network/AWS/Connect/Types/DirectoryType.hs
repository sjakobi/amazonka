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
-- Module      : Network.AWS.Connect.Types.DirectoryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.DirectoryType
  ( DirectoryType
      ( ..,
        DirectoryTypeCONNECTMANAGED,
        DirectoryTypeEXISTINGDIRECTORY,
        DirectoryTypeSAML
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

pattern DirectoryTypeCONNECTMANAGED :: DirectoryType
pattern DirectoryTypeCONNECTMANAGED = DirectoryType' "CONNECT_MANAGED"

pattern DirectoryTypeEXISTINGDIRECTORY :: DirectoryType
pattern DirectoryTypeEXISTINGDIRECTORY = DirectoryType' "EXISTING_DIRECTORY"

pattern DirectoryTypeSAML :: DirectoryType
pattern DirectoryTypeSAML = DirectoryType' "SAML"

{-# COMPLETE
  DirectoryTypeCONNECTMANAGED,
  DirectoryTypeEXISTINGDIRECTORY,
  DirectoryTypeSAML,
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

instance Prelude.ToJSON DirectoryType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DirectoryType where
  parseJSON = Prelude.parseJSONText "DirectoryType"

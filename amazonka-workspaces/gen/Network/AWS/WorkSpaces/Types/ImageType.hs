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
-- Module      : Network.AWS.WorkSpaces.Types.ImageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ImageType
  ( ImageType
      ( ..,
        ImageTypeOWNED,
        ImageTypeSHARED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageType = ImageType'
  { fromImageType ::
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

pattern ImageTypeOWNED :: ImageType
pattern ImageTypeOWNED = ImageType' "OWNED"

pattern ImageTypeSHARED :: ImageType
pattern ImageTypeSHARED = ImageType' "SHARED"

{-# COMPLETE
  ImageTypeOWNED,
  ImageTypeSHARED,
  ImageType'
  #-}

instance Prelude.FromText ImageType where
  parser = ImageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageType where
  toText (ImageType' x) = x

instance Prelude.Hashable ImageType

instance Prelude.NFData ImageType

instance Prelude.ToByteString ImageType

instance Prelude.ToQuery ImageType

instance Prelude.ToHeader ImageType

instance Prelude.ToJSON ImageType where
  toJSON = Prelude.toJSONText

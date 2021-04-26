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
-- Module      : Network.AWS.Rekognition.Types.FaceAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.FaceAttributes
  ( FaceAttributes
      ( ..,
        FaceAttributesALL,
        FaceAttributesDEFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FaceAttributes = FaceAttributes'
  { fromFaceAttributes ::
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

pattern FaceAttributesALL :: FaceAttributes
pattern FaceAttributesALL = FaceAttributes' "ALL"

pattern FaceAttributesDEFAULT :: FaceAttributes
pattern FaceAttributesDEFAULT = FaceAttributes' "DEFAULT"

{-# COMPLETE
  FaceAttributesALL,
  FaceAttributesDEFAULT,
  FaceAttributes'
  #-}

instance Prelude.FromText FaceAttributes where
  parser = FaceAttributes' Prelude.<$> Prelude.takeText

instance Prelude.ToText FaceAttributes where
  toText (FaceAttributes' x) = x

instance Prelude.Hashable FaceAttributes

instance Prelude.NFData FaceAttributes

instance Prelude.ToByteString FaceAttributes

instance Prelude.ToQuery FaceAttributes

instance Prelude.ToHeader FaceAttributes

instance Prelude.ToJSON FaceAttributes where
  toJSON = Prelude.toJSONText

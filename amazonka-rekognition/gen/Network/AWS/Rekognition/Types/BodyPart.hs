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
-- Module      : Network.AWS.Rekognition.Types.BodyPart
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.BodyPart
  ( BodyPart
      ( ..,
        BodyPartFACE,
        BodyPartHEAD,
        BodyPartLEFTHAND,
        BodyPartRIGHTHAND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BodyPart = BodyPart'
  { fromBodyPart ::
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

pattern BodyPartFACE :: BodyPart
pattern BodyPartFACE = BodyPart' "FACE"

pattern BodyPartHEAD :: BodyPart
pattern BodyPartHEAD = BodyPart' "HEAD"

pattern BodyPartLEFTHAND :: BodyPart
pattern BodyPartLEFTHAND = BodyPart' "LEFT_HAND"

pattern BodyPartRIGHTHAND :: BodyPart
pattern BodyPartRIGHTHAND = BodyPart' "RIGHT_HAND"

{-# COMPLETE
  BodyPartFACE,
  BodyPartHEAD,
  BodyPartLEFTHAND,
  BodyPartRIGHTHAND,
  BodyPart'
  #-}

instance Prelude.FromText BodyPart where
  parser = BodyPart' Prelude.<$> Prelude.takeText

instance Prelude.ToText BodyPart where
  toText (BodyPart' x) = x

instance Prelude.Hashable BodyPart

instance Prelude.NFData BodyPart

instance Prelude.ToByteString BodyPart

instance Prelude.ToQuery BodyPart

instance Prelude.ToHeader BodyPart

instance Prelude.FromJSON BodyPart where
  parseJSON = Prelude.parseJSONText "BodyPart"

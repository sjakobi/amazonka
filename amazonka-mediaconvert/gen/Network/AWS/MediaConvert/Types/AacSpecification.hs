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
-- Module      : Network.AWS.MediaConvert.Types.AacSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AacSpecification
  ( AacSpecification
      ( ..,
        AacSpecificationMPEG2,
        AacSpecificationMPEG4
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport
-- Stream containers.
newtype AacSpecification = AacSpecification'
  { fromAacSpecification ::
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

pattern AacSpecificationMPEG2 :: AacSpecification
pattern AacSpecificationMPEG2 = AacSpecification' "MPEG2"

pattern AacSpecificationMPEG4 :: AacSpecification
pattern AacSpecificationMPEG4 = AacSpecification' "MPEG4"

{-# COMPLETE
  AacSpecificationMPEG2,
  AacSpecificationMPEG4,
  AacSpecification'
  #-}

instance Prelude.FromText AacSpecification where
  parser = AacSpecification' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacSpecification where
  toText (AacSpecification' x) = x

instance Prelude.Hashable AacSpecification

instance Prelude.NFData AacSpecification

instance Prelude.ToByteString AacSpecification

instance Prelude.ToQuery AacSpecification

instance Prelude.ToHeader AacSpecification

instance Prelude.ToJSON AacSpecification where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacSpecification where
  parseJSON = Prelude.parseJSONText "AacSpecification"

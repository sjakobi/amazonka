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
-- Module      : Network.AWS.Transcribe.Types.Specialty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.Specialty
  ( Specialty
      ( ..,
        SpecialtyPRIMARYCARE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Specialty = Specialty'
  { fromSpecialty ::
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

pattern SpecialtyPRIMARYCARE :: Specialty
pattern SpecialtyPRIMARYCARE = Specialty' "PRIMARYCARE"

{-# COMPLETE
  SpecialtyPRIMARYCARE,
  Specialty'
  #-}

instance Prelude.FromText Specialty where
  parser = Specialty' Prelude.<$> Prelude.takeText

instance Prelude.ToText Specialty where
  toText (Specialty' x) = x

instance Prelude.Hashable Specialty

instance Prelude.NFData Specialty

instance Prelude.ToByteString Specialty

instance Prelude.ToQuery Specialty

instance Prelude.ToHeader Specialty

instance Prelude.ToJSON Specialty where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Specialty where
  parseJSON = Prelude.parseJSONText "Specialty"

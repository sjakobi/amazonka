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
-- Module      : Network.AWS.Polly.Types.Gender
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.Gender
  ( Gender
      ( ..,
        GenderFemale,
        GenderMale
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Gender = Gender' {fromGender :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern GenderFemale :: Gender
pattern GenderFemale = Gender' "Female"

pattern GenderMale :: Gender
pattern GenderMale = Gender' "Male"

{-# COMPLETE
  GenderFemale,
  GenderMale,
  Gender'
  #-}

instance Prelude.FromText Gender where
  parser = Gender' Prelude.<$> Prelude.takeText

instance Prelude.ToText Gender where
  toText (Gender' x) = x

instance Prelude.Hashable Gender

instance Prelude.NFData Gender

instance Prelude.ToByteString Gender

instance Prelude.ToQuery Gender

instance Prelude.ToHeader Gender

instance Prelude.FromJSON Gender where
  parseJSON = Prelude.parseJSONText "Gender"

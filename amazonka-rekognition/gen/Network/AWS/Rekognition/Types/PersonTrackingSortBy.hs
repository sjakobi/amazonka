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
-- Module      : Network.AWS.Rekognition.Types.PersonTrackingSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.PersonTrackingSortBy
  ( PersonTrackingSortBy
      ( ..,
        PersonTrackingSortByINDEX,
        PersonTrackingSortByTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PersonTrackingSortBy = PersonTrackingSortBy'
  { fromPersonTrackingSortBy ::
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

pattern PersonTrackingSortByINDEX :: PersonTrackingSortBy
pattern PersonTrackingSortByINDEX = PersonTrackingSortBy' "INDEX"

pattern PersonTrackingSortByTIMESTAMP :: PersonTrackingSortBy
pattern PersonTrackingSortByTIMESTAMP = PersonTrackingSortBy' "TIMESTAMP"

{-# COMPLETE
  PersonTrackingSortByINDEX,
  PersonTrackingSortByTIMESTAMP,
  PersonTrackingSortBy'
  #-}

instance Prelude.FromText PersonTrackingSortBy where
  parser = PersonTrackingSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText PersonTrackingSortBy where
  toText (PersonTrackingSortBy' x) = x

instance Prelude.Hashable PersonTrackingSortBy

instance Prelude.NFData PersonTrackingSortBy

instance Prelude.ToByteString PersonTrackingSortBy

instance Prelude.ToQuery PersonTrackingSortBy

instance Prelude.ToHeader PersonTrackingSortBy

instance Prelude.ToJSON PersonTrackingSortBy where
  toJSON = Prelude.toJSONText

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
-- Module      : Network.AWS.SSM.Types.StopType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.StopType
  ( StopType
      ( ..,
        StopTypeCancel,
        StopTypeComplete
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StopType = StopType'
  { fromStopType ::
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

pattern StopTypeCancel :: StopType
pattern StopTypeCancel = StopType' "Cancel"

pattern StopTypeComplete :: StopType
pattern StopTypeComplete = StopType' "Complete"

{-# COMPLETE
  StopTypeCancel,
  StopTypeComplete,
  StopType'
  #-}

instance Prelude.FromText StopType where
  parser = StopType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StopType where
  toText (StopType' x) = x

instance Prelude.Hashable StopType

instance Prelude.NFData StopType

instance Prelude.ToByteString StopType

instance Prelude.ToQuery StopType

instance Prelude.ToHeader StopType

instance Prelude.ToJSON StopType where
  toJSON = Prelude.toJSONText

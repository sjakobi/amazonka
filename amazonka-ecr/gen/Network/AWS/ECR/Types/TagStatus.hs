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
-- Module      : Network.AWS.ECR.Types.TagStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.TagStatus
  ( TagStatus
      ( ..,
        TagStatusANY,
        TagStatusTAGGED,
        TagStatusUNTAGGED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TagStatus = TagStatus'
  { fromTagStatus ::
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

pattern TagStatusANY :: TagStatus
pattern TagStatusANY = TagStatus' "ANY"

pattern TagStatusTAGGED :: TagStatus
pattern TagStatusTAGGED = TagStatus' "TAGGED"

pattern TagStatusUNTAGGED :: TagStatus
pattern TagStatusUNTAGGED = TagStatus' "UNTAGGED"

{-# COMPLETE
  TagStatusANY,
  TagStatusTAGGED,
  TagStatusUNTAGGED,
  TagStatus'
  #-}

instance Prelude.FromText TagStatus where
  parser = TagStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TagStatus where
  toText (TagStatus' x) = x

instance Prelude.Hashable TagStatus

instance Prelude.NFData TagStatus

instance Prelude.ToByteString TagStatus

instance Prelude.ToQuery TagStatus

instance Prelude.ToHeader TagStatus

instance Prelude.ToJSON TagStatus where
  toJSON = Prelude.toJSONText

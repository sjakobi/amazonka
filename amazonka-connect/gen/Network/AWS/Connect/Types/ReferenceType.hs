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
-- Module      : Network.AWS.Connect.Types.ReferenceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.ReferenceType
  ( ReferenceType
      ( ..,
        ReferenceTypeURL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReferenceType = ReferenceType'
  { fromReferenceType ::
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

pattern ReferenceTypeURL :: ReferenceType
pattern ReferenceTypeURL = ReferenceType' "URL"

{-# COMPLETE
  ReferenceTypeURL,
  ReferenceType'
  #-}

instance Prelude.FromText ReferenceType where
  parser = ReferenceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReferenceType where
  toText (ReferenceType' x) = x

instance Prelude.Hashable ReferenceType

instance Prelude.NFData ReferenceType

instance Prelude.ToByteString ReferenceType

instance Prelude.ToQuery ReferenceType

instance Prelude.ToHeader ReferenceType

instance Prelude.ToJSON ReferenceType where
  toJSON = Prelude.toJSONText

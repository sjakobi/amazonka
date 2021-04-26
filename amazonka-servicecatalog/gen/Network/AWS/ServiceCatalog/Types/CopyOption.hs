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
-- Module      : Network.AWS.ServiceCatalog.Types.CopyOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.CopyOption
  ( CopyOption
      ( ..,
        CopyOptionCopyTags
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CopyOption = CopyOption'
  { fromCopyOption ::
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

pattern CopyOptionCopyTags :: CopyOption
pattern CopyOptionCopyTags = CopyOption' "CopyTags"

{-# COMPLETE
  CopyOptionCopyTags,
  CopyOption'
  #-}

instance Prelude.FromText CopyOption where
  parser = CopyOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText CopyOption where
  toText (CopyOption' x) = x

instance Prelude.Hashable CopyOption

instance Prelude.NFData CopyOption

instance Prelude.ToByteString CopyOption

instance Prelude.ToQuery CopyOption

instance Prelude.ToHeader CopyOption

instance Prelude.ToJSON CopyOption where
  toJSON = Prelude.toJSONText

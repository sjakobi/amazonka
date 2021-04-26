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
-- Module      : Network.AWS.DirectoryService.Types.DirectoryEdition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DirectoryEdition
  ( DirectoryEdition
      ( ..,
        DirectoryEditionEnterprise,
        DirectoryEditionStandard
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectoryEdition = DirectoryEdition'
  { fromDirectoryEdition ::
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

pattern DirectoryEditionEnterprise :: DirectoryEdition
pattern DirectoryEditionEnterprise = DirectoryEdition' "Enterprise"

pattern DirectoryEditionStandard :: DirectoryEdition
pattern DirectoryEditionStandard = DirectoryEdition' "Standard"

{-# COMPLETE
  DirectoryEditionEnterprise,
  DirectoryEditionStandard,
  DirectoryEdition'
  #-}

instance Prelude.FromText DirectoryEdition where
  parser = DirectoryEdition' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectoryEdition where
  toText (DirectoryEdition' x) = x

instance Prelude.Hashable DirectoryEdition

instance Prelude.NFData DirectoryEdition

instance Prelude.ToByteString DirectoryEdition

instance Prelude.ToQuery DirectoryEdition

instance Prelude.ToHeader DirectoryEdition

instance Prelude.ToJSON DirectoryEdition where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DirectoryEdition where
  parseJSON = Prelude.parseJSONText "DirectoryEdition"

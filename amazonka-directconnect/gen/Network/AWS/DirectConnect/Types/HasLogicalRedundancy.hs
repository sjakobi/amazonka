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
-- Module      : Network.AWS.DirectConnect.Types.HasLogicalRedundancy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.HasLogicalRedundancy
  ( HasLogicalRedundancy
      ( ..,
        HasLogicalRedundancyNO,
        HasLogicalRedundancyUnknown,
        HasLogicalRedundancyYes
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HasLogicalRedundancy = HasLogicalRedundancy'
  { fromHasLogicalRedundancy ::
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

pattern HasLogicalRedundancyNO :: HasLogicalRedundancy
pattern HasLogicalRedundancyNO = HasLogicalRedundancy' "no"

pattern HasLogicalRedundancyUnknown :: HasLogicalRedundancy
pattern HasLogicalRedundancyUnknown = HasLogicalRedundancy' "unknown"

pattern HasLogicalRedundancyYes :: HasLogicalRedundancy
pattern HasLogicalRedundancyYes = HasLogicalRedundancy' "yes"

{-# COMPLETE
  HasLogicalRedundancyNO,
  HasLogicalRedundancyUnknown,
  HasLogicalRedundancyYes,
  HasLogicalRedundancy'
  #-}

instance Prelude.FromText HasLogicalRedundancy where
  parser = HasLogicalRedundancy' Prelude.<$> Prelude.takeText

instance Prelude.ToText HasLogicalRedundancy where
  toText (HasLogicalRedundancy' x) = x

instance Prelude.Hashable HasLogicalRedundancy

instance Prelude.NFData HasLogicalRedundancy

instance Prelude.ToByteString HasLogicalRedundancy

instance Prelude.ToQuery HasLogicalRedundancy

instance Prelude.ToHeader HasLogicalRedundancy

instance Prelude.FromJSON HasLogicalRedundancy where
  parseJSON = Prelude.parseJSONText "HasLogicalRedundancy"

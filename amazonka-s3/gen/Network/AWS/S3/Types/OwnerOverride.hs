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
-- Module      : Network.AWS.S3.Types.OwnerOverride
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.OwnerOverride
  ( OwnerOverride
      ( ..,
        OwnerOverrideDestination
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype OwnerOverride = OwnerOverride'
  { fromOwnerOverride ::
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

pattern OwnerOverrideDestination :: OwnerOverride
pattern OwnerOverrideDestination = OwnerOverride' "Destination"

{-# COMPLETE
  OwnerOverrideDestination,
  OwnerOverride'
  #-}

instance Prelude.FromText OwnerOverride where
  parser = OwnerOverride' Prelude.<$> Prelude.takeText

instance Prelude.ToText OwnerOverride where
  toText (OwnerOverride' x) = x

instance Prelude.Hashable OwnerOverride

instance Prelude.NFData OwnerOverride

instance Prelude.ToByteString OwnerOverride

instance Prelude.ToQuery OwnerOverride

instance Prelude.ToHeader OwnerOverride

instance Prelude.FromXML OwnerOverride where
  parseXML = Prelude.parseXMLText "OwnerOverride"

instance Prelude.ToXML OwnerOverride where
  toXML = Prelude.toXMLText

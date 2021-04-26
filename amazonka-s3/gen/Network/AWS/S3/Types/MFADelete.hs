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
-- Module      : Network.AWS.S3.Types.MFADelete
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.MFADelete
  ( MFADelete
      ( ..,
        MFADeleteDisabled,
        MFADeleteEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype MFADelete = MFADelete'
  { fromMFADelete ::
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

pattern MFADeleteDisabled :: MFADelete
pattern MFADeleteDisabled = MFADelete' "Disabled"

pattern MFADeleteEnabled :: MFADelete
pattern MFADeleteEnabled = MFADelete' "Enabled"

{-# COMPLETE
  MFADeleteDisabled,
  MFADeleteEnabled,
  MFADelete'
  #-}

instance Prelude.FromText MFADelete where
  parser = MFADelete' Prelude.<$> Prelude.takeText

instance Prelude.ToText MFADelete where
  toText (MFADelete' x) = x

instance Prelude.Hashable MFADelete

instance Prelude.NFData MFADelete

instance Prelude.ToByteString MFADelete

instance Prelude.ToQuery MFADelete

instance Prelude.ToHeader MFADelete

instance Prelude.ToXML MFADelete where
  toXML = Prelude.toXMLText

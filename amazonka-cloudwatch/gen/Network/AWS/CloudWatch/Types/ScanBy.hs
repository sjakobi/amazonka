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
-- Module      : Network.AWS.CloudWatch.Types.ScanBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.ScanBy
  ( ScanBy
      ( ..,
        ScanByTimestampAscending,
        ScanByTimestampDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScanBy = ScanBy' {fromScanBy :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ScanByTimestampAscending :: ScanBy
pattern ScanByTimestampAscending = ScanBy' "TimestampAscending"

pattern ScanByTimestampDescending :: ScanBy
pattern ScanByTimestampDescending = ScanBy' "TimestampDescending"

{-# COMPLETE
  ScanByTimestampAscending,
  ScanByTimestampDescending,
  ScanBy'
  #-}

instance Prelude.FromText ScanBy where
  parser = ScanBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScanBy where
  toText (ScanBy' x) = x

instance Prelude.Hashable ScanBy

instance Prelude.NFData ScanBy

instance Prelude.ToByteString ScanBy

instance Prelude.ToQuery ScanBy

instance Prelude.ToHeader ScanBy

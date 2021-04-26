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
-- Module      : Network.AWS.DMS.Types.ReleaseStatusValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReleaseStatusValues
  ( ReleaseStatusValues
      ( ..,
        ReleaseStatusValuesBeta
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReleaseStatusValues = ReleaseStatusValues'
  { fromReleaseStatusValues ::
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

pattern ReleaseStatusValuesBeta :: ReleaseStatusValues
pattern ReleaseStatusValuesBeta = ReleaseStatusValues' "beta"

{-# COMPLETE
  ReleaseStatusValuesBeta,
  ReleaseStatusValues'
  #-}

instance Prelude.FromText ReleaseStatusValues where
  parser = ReleaseStatusValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReleaseStatusValues where
  toText (ReleaseStatusValues' x) = x

instance Prelude.Hashable ReleaseStatusValues

instance Prelude.NFData ReleaseStatusValues

instance Prelude.ToByteString ReleaseStatusValues

instance Prelude.ToQuery ReleaseStatusValues

instance Prelude.ToHeader ReleaseStatusValues

instance Prelude.FromJSON ReleaseStatusValues where
  parseJSON = Prelude.parseJSONText "ReleaseStatusValues"

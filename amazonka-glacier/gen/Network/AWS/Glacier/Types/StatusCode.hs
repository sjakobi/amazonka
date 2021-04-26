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
-- Module      : Network.AWS.Glacier.Types.StatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.StatusCode
  ( StatusCode
      ( ..,
        StatusCodeFailed,
        StatusCodeInProgress,
        StatusCodeSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StatusCode = StatusCode'
  { fromStatusCode ::
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

pattern StatusCodeFailed :: StatusCode
pattern StatusCodeFailed = StatusCode' "Failed"

pattern StatusCodeInProgress :: StatusCode
pattern StatusCodeInProgress = StatusCode' "InProgress"

pattern StatusCodeSucceeded :: StatusCode
pattern StatusCodeSucceeded = StatusCode' "Succeeded"

{-# COMPLETE
  StatusCodeFailed,
  StatusCodeInProgress,
  StatusCodeSucceeded,
  StatusCode'
  #-}

instance Prelude.FromText StatusCode where
  parser = StatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText StatusCode where
  toText (StatusCode' x) = x

instance Prelude.Hashable StatusCode

instance Prelude.NFData StatusCode

instance Prelude.ToByteString StatusCode

instance Prelude.ToQuery StatusCode

instance Prelude.ToHeader StatusCode

instance Prelude.FromJSON StatusCode where
  parseJSON = Prelude.parseJSONText "StatusCode"

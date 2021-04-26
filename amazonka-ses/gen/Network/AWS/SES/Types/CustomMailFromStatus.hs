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
-- Module      : Network.AWS.SES.Types.CustomMailFromStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.CustomMailFromStatus
  ( CustomMailFromStatus
      ( ..,
        CustomMailFromStatusFailed,
        CustomMailFromStatusPending,
        CustomMailFromStatusSuccess,
        CustomMailFromStatusTemporaryFailure
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CustomMailFromStatus = CustomMailFromStatus'
  { fromCustomMailFromStatus ::
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

pattern CustomMailFromStatusFailed :: CustomMailFromStatus
pattern CustomMailFromStatusFailed = CustomMailFromStatus' "Failed"

pattern CustomMailFromStatusPending :: CustomMailFromStatus
pattern CustomMailFromStatusPending = CustomMailFromStatus' "Pending"

pattern CustomMailFromStatusSuccess :: CustomMailFromStatus
pattern CustomMailFromStatusSuccess = CustomMailFromStatus' "Success"

pattern CustomMailFromStatusTemporaryFailure :: CustomMailFromStatus
pattern CustomMailFromStatusTemporaryFailure = CustomMailFromStatus' "TemporaryFailure"

{-# COMPLETE
  CustomMailFromStatusFailed,
  CustomMailFromStatusPending,
  CustomMailFromStatusSuccess,
  CustomMailFromStatusTemporaryFailure,
  CustomMailFromStatus'
  #-}

instance Prelude.FromText CustomMailFromStatus where
  parser = CustomMailFromStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CustomMailFromStatus where
  toText (CustomMailFromStatus' x) = x

instance Prelude.Hashable CustomMailFromStatus

instance Prelude.NFData CustomMailFromStatus

instance Prelude.ToByteString CustomMailFromStatus

instance Prelude.ToQuery CustomMailFromStatus

instance Prelude.ToHeader CustomMailFromStatus

instance Prelude.FromXML CustomMailFromStatus where
  parseXML = Prelude.parseXMLText "CustomMailFromStatus"

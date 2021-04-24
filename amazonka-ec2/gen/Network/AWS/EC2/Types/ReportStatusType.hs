{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ReportStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReportStatusType
  ( ReportStatusType
      ( ..,
        RSTImpaired,
        RSTOK
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ReportStatusType = ReportStatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RSTImpaired :: ReportStatusType
pattern RSTImpaired = ReportStatusType' "impaired"

pattern RSTOK :: ReportStatusType
pattern RSTOK = ReportStatusType' "ok"

{-# COMPLETE
  RSTImpaired,
  RSTOK,
  ReportStatusType'
  #-}

instance FromText ReportStatusType where
  parser = (ReportStatusType' . mk) <$> takeText

instance ToText ReportStatusType where
  toText (ReportStatusType' ci) = original ci

instance Hashable ReportStatusType

instance NFData ReportStatusType

instance ToByteString ReportStatusType

instance ToQuery ReportStatusType

instance ToHeader ReportStatusType

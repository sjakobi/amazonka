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
-- Module      : Network.AWS.AppSync.Types.DataSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.DataSourceType
  ( DataSourceType
      ( ..,
        DataSourceTypeAMAZONDYNAMODB,
        DataSourceTypeAMAZONELASTICSEARCH,
        DataSourceTypeAWSLAMBDA,
        DataSourceTypeHTTP,
        DataSourceTypeNONE,
        DataSourceTypeRELATIONALDATABASE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataSourceType = DataSourceType'
  { fromDataSourceType ::
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

pattern DataSourceTypeAMAZONDYNAMODB :: DataSourceType
pattern DataSourceTypeAMAZONDYNAMODB = DataSourceType' "AMAZON_DYNAMODB"

pattern DataSourceTypeAMAZONELASTICSEARCH :: DataSourceType
pattern DataSourceTypeAMAZONELASTICSEARCH = DataSourceType' "AMAZON_ELASTICSEARCH"

pattern DataSourceTypeAWSLAMBDA :: DataSourceType
pattern DataSourceTypeAWSLAMBDA = DataSourceType' "AWS_LAMBDA"

pattern DataSourceTypeHTTP :: DataSourceType
pattern DataSourceTypeHTTP = DataSourceType' "HTTP"

pattern DataSourceTypeNONE :: DataSourceType
pattern DataSourceTypeNONE = DataSourceType' "NONE"

pattern DataSourceTypeRELATIONALDATABASE :: DataSourceType
pattern DataSourceTypeRELATIONALDATABASE = DataSourceType' "RELATIONAL_DATABASE"

{-# COMPLETE
  DataSourceTypeAMAZONDYNAMODB,
  DataSourceTypeAMAZONELASTICSEARCH,
  DataSourceTypeAWSLAMBDA,
  DataSourceTypeHTTP,
  DataSourceTypeNONE,
  DataSourceTypeRELATIONALDATABASE,
  DataSourceType'
  #-}

instance Prelude.FromText DataSourceType where
  parser = DataSourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataSourceType where
  toText (DataSourceType' x) = x

instance Prelude.Hashable DataSourceType

instance Prelude.NFData DataSourceType

instance Prelude.ToByteString DataSourceType

instance Prelude.ToQuery DataSourceType

instance Prelude.ToHeader DataSourceType

instance Prelude.ToJSON DataSourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DataSourceType where
  parseJSON = Prelude.parseJSONText "DataSourceType"

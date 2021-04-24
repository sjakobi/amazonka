{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.DataCatalog
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.DataCatalog where

import Network.AWS.Athena.Types.DataCatalogType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a data catalog in an AWS account.
--
--
--
-- /See:/ 'dataCatalog' smart constructor.
data DataCatalog = DataCatalog'
  { _dcDescription ::
      !(Maybe Text),
    _dcParameters :: !(Maybe (Map Text Text)),
    _dcName :: !Text,
    _dcType :: !DataCatalogType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataCatalog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcDescription' - An optional description of the data catalog.
--
-- * 'dcParameters' - Specifies the Lambda function or functions to use for the data catalog. This is a mapping whose values depend on the catalog type.      * For the @HIVE@ data catalog type, use the following syntax. The @metadata-function@ parameter is required. @The sdk-version@ parameter is optional and defaults to the currently supported version. @metadata-function=/lambda_arn/ , sdk-version=/version_number/ @      * For the @LAMBDA@ data catalog type, use one of the following sets of required parameters, but not both.     * If you have one Lambda function that processes metadata and another for reading the actual data, use the following syntax. Both parameters are required. @metadata-function=/lambda_arn/ , record-function=/lambda_arn/ @      * If you have a composite Lambda function that processes both metadata and data, use the following syntax to specify your Lambda function. @function=/lambda_arn/ @
--
-- * 'dcName' - The name of the data catalog. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.
--
-- * 'dcType' - The type of data catalog: @LAMBDA@ for a federated catalog or @HIVE@ for an external hive metastore. @GLUE@ refers to the @AwsDataCatalog@ that already exists in your account, of which you can have only one.
dataCatalog ::
  -- | 'dcName'
  Text ->
  -- | 'dcType'
  DataCatalogType ->
  DataCatalog
dataCatalog pName_ pType_ =
  DataCatalog'
    { _dcDescription = Nothing,
      _dcParameters = Nothing,
      _dcName = pName_,
      _dcType = pType_
    }

-- | An optional description of the data catalog.
dcDescription :: Lens' DataCatalog (Maybe Text)
dcDescription = lens _dcDescription (\s a -> s {_dcDescription = a})

-- | Specifies the Lambda function or functions to use for the data catalog. This is a mapping whose values depend on the catalog type.      * For the @HIVE@ data catalog type, use the following syntax. The @metadata-function@ parameter is required. @The sdk-version@ parameter is optional and defaults to the currently supported version. @metadata-function=/lambda_arn/ , sdk-version=/version_number/ @      * For the @LAMBDA@ data catalog type, use one of the following sets of required parameters, but not both.     * If you have one Lambda function that processes metadata and another for reading the actual data, use the following syntax. Both parameters are required. @metadata-function=/lambda_arn/ , record-function=/lambda_arn/ @      * If you have a composite Lambda function that processes both metadata and data, use the following syntax to specify your Lambda function. @function=/lambda_arn/ @
dcParameters :: Lens' DataCatalog (HashMap Text Text)
dcParameters = lens _dcParameters (\s a -> s {_dcParameters = a}) . _Default . _Map

-- | The name of the data catalog. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.
dcName :: Lens' DataCatalog Text
dcName = lens _dcName (\s a -> s {_dcName = a})

-- | The type of data catalog: @LAMBDA@ for a federated catalog or @HIVE@ for an external hive metastore. @GLUE@ refers to the @AwsDataCatalog@ that already exists in your account, of which you can have only one.
dcType :: Lens' DataCatalog DataCatalogType
dcType = lens _dcType (\s a -> s {_dcType = a})

instance FromJSON DataCatalog where
  parseJSON =
    withObject
      "DataCatalog"
      ( \x ->
          DataCatalog'
            <$> (x .:? "Description")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .: "Name")
            <*> (x .: "Type")
      )

instance Hashable DataCatalog

instance NFData DataCatalog

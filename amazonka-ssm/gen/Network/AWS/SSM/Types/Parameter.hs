{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.Parameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.Parameter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.ParameterType

-- | An Systems Manager parameter in Parameter Store.
--
--
--
-- /See:/ 'parameter' smart constructor.
data Parameter = Parameter'
  { _parLastModifiedDate ::
      !(Maybe POSIX),
    _parARN :: !(Maybe Text),
    _parVersion :: !(Maybe Integer),
    _parName :: !(Maybe Text),
    _parSourceResult :: !(Maybe Text),
    _parValue :: !(Maybe Text),
    _parType :: !(Maybe ParameterType),
    _parDataType :: !(Maybe Text),
    _parSelector :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Parameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parLastModifiedDate' - Date the parameter was last changed or updated and the parameter version was created.
--
-- * 'parARN' - The Amazon Resource Name (ARN) of the parameter.
--
-- * 'parVersion' - The parameter version.
--
-- * 'parName' - The name of the parameter.
--
-- * 'parSourceResult' - Applies to parameters that reference information in other AWS services. SourceResult is the raw result or response from the source.
--
-- * 'parValue' - The parameter value.
--
-- * 'parType' - The type of parameter. Valid values include the following: @String@ , @StringList@ , and @SecureString@ .
--
-- * 'parDataType' - The data type of the parameter, such as @text@ or @aws:ec2:image@ . The default is @text@ .
--
-- * 'parSelector' - Either the version number or the label used to retrieve the parameter value. Specify selectors by using one of the following formats: parameter_name:version parameter_name:label
parameter ::
  Parameter
parameter =
  Parameter'
    { _parLastModifiedDate = Nothing,
      _parARN = Nothing,
      _parVersion = Nothing,
      _parName = Nothing,
      _parSourceResult = Nothing,
      _parValue = Nothing,
      _parType = Nothing,
      _parDataType = Nothing,
      _parSelector = Nothing
    }

-- | Date the parameter was last changed or updated and the parameter version was created.
parLastModifiedDate :: Lens' Parameter (Maybe UTCTime)
parLastModifiedDate = lens _parLastModifiedDate (\s a -> s {_parLastModifiedDate = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the parameter.
parARN :: Lens' Parameter (Maybe Text)
parARN = lens _parARN (\s a -> s {_parARN = a})

-- | The parameter version.
parVersion :: Lens' Parameter (Maybe Integer)
parVersion = lens _parVersion (\s a -> s {_parVersion = a})

-- | The name of the parameter.
parName :: Lens' Parameter (Maybe Text)
parName = lens _parName (\s a -> s {_parName = a})

-- | Applies to parameters that reference information in other AWS services. SourceResult is the raw result or response from the source.
parSourceResult :: Lens' Parameter (Maybe Text)
parSourceResult = lens _parSourceResult (\s a -> s {_parSourceResult = a})

-- | The parameter value.
parValue :: Lens' Parameter (Maybe Text)
parValue = lens _parValue (\s a -> s {_parValue = a})

-- | The type of parameter. Valid values include the following: @String@ , @StringList@ , and @SecureString@ .
parType :: Lens' Parameter (Maybe ParameterType)
parType = lens _parType (\s a -> s {_parType = a})

-- | The data type of the parameter, such as @text@ or @aws:ec2:image@ . The default is @text@ .
parDataType :: Lens' Parameter (Maybe Text)
parDataType = lens _parDataType (\s a -> s {_parDataType = a})

-- | Either the version number or the label used to retrieve the parameter value. Specify selectors by using one of the following formats: parameter_name:version parameter_name:label
parSelector :: Lens' Parameter (Maybe Text)
parSelector = lens _parSelector (\s a -> s {_parSelector = a})

instance FromJSON Parameter where
  parseJSON =
    withObject
      "Parameter"
      ( \x ->
          Parameter'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ARN")
            <*> (x .:? "Version")
            <*> (x .:? "Name")
            <*> (x .:? "SourceResult")
            <*> (x .:? "Value")
            <*> (x .:? "Type")
            <*> (x .:? "DataType")
            <*> (x .:? "Selector")
      )

instance Hashable Parameter

instance NFData Parameter

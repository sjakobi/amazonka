{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ParameterConstraints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ParameterConstraints where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The constraints that the administrator has put on the parameter.
--
--
--
-- /See:/ 'parameterConstraints' smart constructor.
data ParameterConstraints = ParameterConstraints'
  { _pcMaxValue ::
      !(Maybe Text),
    _pcMinLength :: !(Maybe Text),
    _pcAllowedValues ::
      !(Maybe [Text]),
    _pcMinValue :: !(Maybe Text),
    _pcConstraintDescription ::
      !(Maybe Text),
    _pcMaxLength :: !(Maybe Text),
    _pcAllowedPattern ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParameterConstraints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcMaxValue' - A numeric value that determines the largest numeric value you want to allow for @Number@ types.
--
-- * 'pcMinLength' - An integer value that determines the smallest number of characters you want to allow for @String@ types.
--
-- * 'pcAllowedValues' - The values that the administrator has allowed for the parameter.
--
-- * 'pcMinValue' - A numeric value that determines the smallest numeric value you want to allow for @Number@ types.
--
-- * 'pcConstraintDescription' - A string that explains a constraint when the constraint is violated. For example, without a constraint description, a parameter that has an allowed pattern of @[A-Za-z0-9]+@ displays the following error message when the user specifies an invalid value: @Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+@  By adding a constraint description, such as must only contain letters (uppercase and lowercase) and numbers, you can display the following customized error message: @Malformed input-Parameter MyParameter must only contain uppercase and lowercase letters and numbers.@
--
-- * 'pcMaxLength' - An integer value that determines the largest number of characters you want to allow for @String@ types.
--
-- * 'pcAllowedPattern' - A regular expression that represents the patterns that allow for @String@ types. The pattern must match the entire parameter value provided.
parameterConstraints ::
  ParameterConstraints
parameterConstraints =
  ParameterConstraints'
    { _pcMaxValue = Nothing,
      _pcMinLength = Nothing,
      _pcAllowedValues = Nothing,
      _pcMinValue = Nothing,
      _pcConstraintDescription = Nothing,
      _pcMaxLength = Nothing,
      _pcAllowedPattern = Nothing
    }

-- | A numeric value that determines the largest numeric value you want to allow for @Number@ types.
pcMaxValue :: Lens' ParameterConstraints (Maybe Text)
pcMaxValue = lens _pcMaxValue (\s a -> s {_pcMaxValue = a})

-- | An integer value that determines the smallest number of characters you want to allow for @String@ types.
pcMinLength :: Lens' ParameterConstraints (Maybe Text)
pcMinLength = lens _pcMinLength (\s a -> s {_pcMinLength = a})

-- | The values that the administrator has allowed for the parameter.
pcAllowedValues :: Lens' ParameterConstraints [Text]
pcAllowedValues = lens _pcAllowedValues (\s a -> s {_pcAllowedValues = a}) . _Default . _Coerce

-- | A numeric value that determines the smallest numeric value you want to allow for @Number@ types.
pcMinValue :: Lens' ParameterConstraints (Maybe Text)
pcMinValue = lens _pcMinValue (\s a -> s {_pcMinValue = a})

-- | A string that explains a constraint when the constraint is violated. For example, without a constraint description, a parameter that has an allowed pattern of @[A-Za-z0-9]+@ displays the following error message when the user specifies an invalid value: @Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+@  By adding a constraint description, such as must only contain letters (uppercase and lowercase) and numbers, you can display the following customized error message: @Malformed input-Parameter MyParameter must only contain uppercase and lowercase letters and numbers.@
pcConstraintDescription :: Lens' ParameterConstraints (Maybe Text)
pcConstraintDescription = lens _pcConstraintDescription (\s a -> s {_pcConstraintDescription = a})

-- | An integer value that determines the largest number of characters you want to allow for @String@ types.
pcMaxLength :: Lens' ParameterConstraints (Maybe Text)
pcMaxLength = lens _pcMaxLength (\s a -> s {_pcMaxLength = a})

-- | A regular expression that represents the patterns that allow for @String@ types. The pattern must match the entire parameter value provided.
pcAllowedPattern :: Lens' ParameterConstraints (Maybe Text)
pcAllowedPattern = lens _pcAllowedPattern (\s a -> s {_pcAllowedPattern = a})

instance FromJSON ParameterConstraints where
  parseJSON =
    withObject
      "ParameterConstraints"
      ( \x ->
          ParameterConstraints'
            <$> (x .:? "MaxValue")
            <*> (x .:? "MinLength")
            <*> (x .:? "AllowedValues" .!= mempty)
            <*> (x .:? "MinValue")
            <*> (x .:? "ConstraintDescription")
            <*> (x .:? "MaxLength")
            <*> (x .:? "AllowedPattern")
      )

instance Hashable ParameterConstraints

instance NFData ParameterConstraints

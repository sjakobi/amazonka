{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.PutSlotType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom slot type or replaces an existing custom slot type.
--
--
-- To create a custom slot type, specify a name for the slot type and a set of enumeration values, which are the values that a slot of this type can assume. For more information, see 'how-it-works' .
--
-- If you specify the name of an existing slot type, the fields in the request replace the existing values in the @> LATEST@ version of the slot type. Amazon Lex removes the fields that you don't provide in the request. If you don't specify required fields, Amazon Lex throws an exception. When you update the @> LATEST@ version of a slot type, if a bot uses the @> LATEST@ version of an intent that contains the slot type, the bot's @status@ field is set to @NOT_BUILT@ .
--
-- This operation requires permissions for the @lex:PutSlotType@ action.
module Network.AWS.LexModels.PutSlotType
  ( -- * Creating a Request
    putSlotType,
    PutSlotType,

    -- * Request Lenses
    pstSlotTypeConfigurations,
    pstEnumerationValues,
    pstValueSelectionStrategy,
    pstParentSlotTypeSignature,
    pstCreateVersion,
    pstDescription,
    pstChecksum,
    pstName,

    -- * Destructuring the Response
    putSlotTypeResponse,
    PutSlotTypeResponse,

    -- * Response Lenses
    pstrrsSlotTypeConfigurations,
    pstrrsCreatedDate,
    pstrrsEnumerationValues,
    pstrrsLastUpdatedDate,
    pstrrsValueSelectionStrategy,
    pstrrsVersion,
    pstrrsName,
    pstrrsParentSlotTypeSignature,
    pstrrsCreateVersion,
    pstrrsDescription,
    pstrrsChecksum,
    pstrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putSlotType' smart constructor.
data PutSlotType = PutSlotType'
  { _pstSlotTypeConfigurations ::
      !(Maybe [SlotTypeConfiguration]),
    _pstEnumerationValues ::
      !(Maybe [EnumerationValue]),
    _pstValueSelectionStrategy ::
      !(Maybe SlotValueSelectionStrategy),
    _pstParentSlotTypeSignature :: !(Maybe Text),
    _pstCreateVersion :: !(Maybe Bool),
    _pstDescription :: !(Maybe Text),
    _pstChecksum :: !(Maybe Text),
    _pstName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutSlotType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pstSlotTypeConfigurations' - Configuration information that extends the parent built-in slot type. The configuration is added to the settings for the parent slot type.
--
-- * 'pstEnumerationValues' - A list of @EnumerationValue@ objects that defines the values that the slot type can take. Each value can have a list of @synonyms@ , which are additional values that help train the machine learning model about the values that it resolves for a slot.  A regular expression slot type doesn't require enumeration values. All other slot types require a list of enumeration values. When Amazon Lex resolves a slot value, it generates a resolution list that contains up to five possible values for the slot. If you are using a Lambda function, this resolution list is passed to the function. If you are not using a Lambda function you can choose to return the value that the user entered or the first value in the resolution list as the slot value. The @valueSelectionStrategy@ field indicates the option to use.
--
-- * 'pstValueSelectionStrategy' - Determines the slot resolution strategy that Amazon Lex uses to return slot type values. The field can be set to one of the following values:     * @ORIGINAL_VALUE@ - Returns the value entered by the user, if the user value is similar to the slot value.     * @TOP_RESOLUTION@ - If there is a resolution list for the slot, return the first value in the resolution list as the slot type value. If there is no resolution list, null is returned. If you don't specify the @valueSelectionStrategy@ , the default is @ORIGINAL_VALUE@ .
--
-- * 'pstParentSlotTypeSignature' - The built-in slot type used as the parent of the slot type. When you define a parent slot type, the new slot type has all of the same configuration as the parent. Only @AMAZON.AlphaNumeric@ is supported.
--
-- * 'pstCreateVersion' - When set to @true@ a new numbered version of the slot type is created. This is the same as calling the @CreateSlotTypeVersion@ operation. If you do not specify @createVersion@ , the default is @false@ .
--
-- * 'pstDescription' - A description of the slot type.
--
-- * 'pstChecksum' - Identifies a specific revision of the @> LATEST@ version. When you create a new slot type, leave the @checksum@ field blank. If you specify a checksum you get a @BadRequestException@ exception. When you want to update a slot type, set the @checksum@ field to the checksum of the most recent revision of the @> LATEST@ version. If you don't specify the @checksum@ field, or if the checksum does not match the @> LATEST@ version, you get a @PreconditionFailedException@ exception.
--
-- * 'pstName' - The name of the slot type. The name is /not/ case sensitive.  The name can't match a built-in slot type name, or a built-in slot type name with "AMAZON." removed. For example, because there is a built-in slot type called @AMAZON.DATE@ , you can't create a custom slot type called @DATE@ . For a list of built-in slot types, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference Slot Type Reference> in the /Alexa Skills Kit/ .
putSlotType ::
  -- | 'pstName'
  Text ->
  PutSlotType
putSlotType pName_ =
  PutSlotType'
    { _pstSlotTypeConfigurations = Nothing,
      _pstEnumerationValues = Nothing,
      _pstValueSelectionStrategy = Nothing,
      _pstParentSlotTypeSignature = Nothing,
      _pstCreateVersion = Nothing,
      _pstDescription = Nothing,
      _pstChecksum = Nothing,
      _pstName = pName_
    }

-- | Configuration information that extends the parent built-in slot type. The configuration is added to the settings for the parent slot type.
pstSlotTypeConfigurations :: Lens' PutSlotType [SlotTypeConfiguration]
pstSlotTypeConfigurations = lens _pstSlotTypeConfigurations (\s a -> s {_pstSlotTypeConfigurations = a}) . _Default . _Coerce

-- | A list of @EnumerationValue@ objects that defines the values that the slot type can take. Each value can have a list of @synonyms@ , which are additional values that help train the machine learning model about the values that it resolves for a slot.  A regular expression slot type doesn't require enumeration values. All other slot types require a list of enumeration values. When Amazon Lex resolves a slot value, it generates a resolution list that contains up to five possible values for the slot. If you are using a Lambda function, this resolution list is passed to the function. If you are not using a Lambda function you can choose to return the value that the user entered or the first value in the resolution list as the slot value. The @valueSelectionStrategy@ field indicates the option to use.
pstEnumerationValues :: Lens' PutSlotType [EnumerationValue]
pstEnumerationValues = lens _pstEnumerationValues (\s a -> s {_pstEnumerationValues = a}) . _Default . _Coerce

-- | Determines the slot resolution strategy that Amazon Lex uses to return slot type values. The field can be set to one of the following values:     * @ORIGINAL_VALUE@ - Returns the value entered by the user, if the user value is similar to the slot value.     * @TOP_RESOLUTION@ - If there is a resolution list for the slot, return the first value in the resolution list as the slot type value. If there is no resolution list, null is returned. If you don't specify the @valueSelectionStrategy@ , the default is @ORIGINAL_VALUE@ .
pstValueSelectionStrategy :: Lens' PutSlotType (Maybe SlotValueSelectionStrategy)
pstValueSelectionStrategy = lens _pstValueSelectionStrategy (\s a -> s {_pstValueSelectionStrategy = a})

-- | The built-in slot type used as the parent of the slot type. When you define a parent slot type, the new slot type has all of the same configuration as the parent. Only @AMAZON.AlphaNumeric@ is supported.
pstParentSlotTypeSignature :: Lens' PutSlotType (Maybe Text)
pstParentSlotTypeSignature = lens _pstParentSlotTypeSignature (\s a -> s {_pstParentSlotTypeSignature = a})

-- | When set to @true@ a new numbered version of the slot type is created. This is the same as calling the @CreateSlotTypeVersion@ operation. If you do not specify @createVersion@ , the default is @false@ .
pstCreateVersion :: Lens' PutSlotType (Maybe Bool)
pstCreateVersion = lens _pstCreateVersion (\s a -> s {_pstCreateVersion = a})

-- | A description of the slot type.
pstDescription :: Lens' PutSlotType (Maybe Text)
pstDescription = lens _pstDescription (\s a -> s {_pstDescription = a})

-- | Identifies a specific revision of the @> LATEST@ version. When you create a new slot type, leave the @checksum@ field blank. If you specify a checksum you get a @BadRequestException@ exception. When you want to update a slot type, set the @checksum@ field to the checksum of the most recent revision of the @> LATEST@ version. If you don't specify the @checksum@ field, or if the checksum does not match the @> LATEST@ version, you get a @PreconditionFailedException@ exception.
pstChecksum :: Lens' PutSlotType (Maybe Text)
pstChecksum = lens _pstChecksum (\s a -> s {_pstChecksum = a})

-- | The name of the slot type. The name is /not/ case sensitive.  The name can't match a built-in slot type name, or a built-in slot type name with "AMAZON." removed. For example, because there is a built-in slot type called @AMAZON.DATE@ , you can't create a custom slot type called @DATE@ . For a list of built-in slot types, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference Slot Type Reference> in the /Alexa Skills Kit/ .
pstName :: Lens' PutSlotType Text
pstName = lens _pstName (\s a -> s {_pstName = a})

instance AWSRequest PutSlotType where
  type Rs PutSlotType = PutSlotTypeResponse
  request = putJSON lexModels
  response =
    receiveJSON
      ( \s h x ->
          PutSlotTypeResponse'
            <$> (x .?> "slotTypeConfigurations" .!@ mempty)
            <*> (x .?> "createdDate")
            <*> (x .?> "enumerationValues" .!@ mempty)
            <*> (x .?> "lastUpdatedDate")
            <*> (x .?> "valueSelectionStrategy")
            <*> (x .?> "version")
            <*> (x .?> "name")
            <*> (x .?> "parentSlotTypeSignature")
            <*> (x .?> "createVersion")
            <*> (x .?> "description")
            <*> (x .?> "checksum")
            <*> (pure (fromEnum s))
      )

instance Hashable PutSlotType

instance NFData PutSlotType

instance ToHeaders PutSlotType where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutSlotType where
  toJSON PutSlotType' {..} =
    object
      ( catMaybes
          [ ("slotTypeConfigurations" .=)
              <$> _pstSlotTypeConfigurations,
            ("enumerationValues" .=) <$> _pstEnumerationValues,
            ("valueSelectionStrategy" .=)
              <$> _pstValueSelectionStrategy,
            ("parentSlotTypeSignature" .=)
              <$> _pstParentSlotTypeSignature,
            ("createVersion" .=) <$> _pstCreateVersion,
            ("description" .=) <$> _pstDescription,
            ("checksum" .=) <$> _pstChecksum
          ]
      )

instance ToPath PutSlotType where
  toPath PutSlotType' {..} =
    mconcat
      ["/slottypes/", toBS _pstName, "/versions/$LATEST"]

instance ToQuery PutSlotType where
  toQuery = const mempty

-- | /See:/ 'putSlotTypeResponse' smart constructor.
data PutSlotTypeResponse = PutSlotTypeResponse'
  { _pstrrsSlotTypeConfigurations ::
      !( Maybe
           [SlotTypeConfiguration]
       ),
    _pstrrsCreatedDate ::
      !(Maybe POSIX),
    _pstrrsEnumerationValues ::
      !(Maybe [EnumerationValue]),
    _pstrrsLastUpdatedDate ::
      !(Maybe POSIX),
    _pstrrsValueSelectionStrategy ::
      !( Maybe
           SlotValueSelectionStrategy
       ),
    _pstrrsVersion :: !(Maybe Text),
    _pstrrsName :: !(Maybe Text),
    _pstrrsParentSlotTypeSignature ::
      !(Maybe Text),
    _pstrrsCreateVersion ::
      !(Maybe Bool),
    _pstrrsDescription ::
      !(Maybe Text),
    _pstrrsChecksum ::
      !(Maybe Text),
    _pstrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutSlotTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pstrrsSlotTypeConfigurations' - Configuration information that extends the parent built-in slot type.
--
-- * 'pstrrsCreatedDate' - The date that the slot type was created.
--
-- * 'pstrrsEnumerationValues' - A list of @EnumerationValue@ objects that defines the values that the slot type can take.
--
-- * 'pstrrsLastUpdatedDate' - The date that the slot type was updated. When you create a slot type, the creation date and last update date are the same.
--
-- * 'pstrrsValueSelectionStrategy' - The slot resolution strategy that Amazon Lex uses to determine the value of the slot. For more information, see 'PutSlotType' .
--
-- * 'pstrrsVersion' - The version of the slot type. For a new slot type, the version is always @> LATEST@ .
--
-- * 'pstrrsName' - The name of the slot type.
--
-- * 'pstrrsParentSlotTypeSignature' - The built-in slot type used as the parent of the slot type.
--
-- * 'pstrrsCreateVersion' - @True@ if a new version of the slot type was created. If the @createVersion@ field was not specified in the request, the @createVersion@ field is set to false in the response.
--
-- * 'pstrrsDescription' - A description of the slot type.
--
-- * 'pstrrsChecksum' - Checksum of the @> LATEST@ version of the slot type.
--
-- * 'pstrrsResponseStatus' - -- | The response status code.
putSlotTypeResponse ::
  -- | 'pstrrsResponseStatus'
  Int ->
  PutSlotTypeResponse
putSlotTypeResponse pResponseStatus_ =
  PutSlotTypeResponse'
    { _pstrrsSlotTypeConfigurations =
        Nothing,
      _pstrrsCreatedDate = Nothing,
      _pstrrsEnumerationValues = Nothing,
      _pstrrsLastUpdatedDate = Nothing,
      _pstrrsValueSelectionStrategy = Nothing,
      _pstrrsVersion = Nothing,
      _pstrrsName = Nothing,
      _pstrrsParentSlotTypeSignature = Nothing,
      _pstrrsCreateVersion = Nothing,
      _pstrrsDescription = Nothing,
      _pstrrsChecksum = Nothing,
      _pstrrsResponseStatus = pResponseStatus_
    }

-- | Configuration information that extends the parent built-in slot type.
pstrrsSlotTypeConfigurations :: Lens' PutSlotTypeResponse [SlotTypeConfiguration]
pstrrsSlotTypeConfigurations = lens _pstrrsSlotTypeConfigurations (\s a -> s {_pstrrsSlotTypeConfigurations = a}) . _Default . _Coerce

-- | The date that the slot type was created.
pstrrsCreatedDate :: Lens' PutSlotTypeResponse (Maybe UTCTime)
pstrrsCreatedDate = lens _pstrrsCreatedDate (\s a -> s {_pstrrsCreatedDate = a}) . mapping _Time

-- | A list of @EnumerationValue@ objects that defines the values that the slot type can take.
pstrrsEnumerationValues :: Lens' PutSlotTypeResponse [EnumerationValue]
pstrrsEnumerationValues = lens _pstrrsEnumerationValues (\s a -> s {_pstrrsEnumerationValues = a}) . _Default . _Coerce

-- | The date that the slot type was updated. When you create a slot type, the creation date and last update date are the same.
pstrrsLastUpdatedDate :: Lens' PutSlotTypeResponse (Maybe UTCTime)
pstrrsLastUpdatedDate = lens _pstrrsLastUpdatedDate (\s a -> s {_pstrrsLastUpdatedDate = a}) . mapping _Time

-- | The slot resolution strategy that Amazon Lex uses to determine the value of the slot. For more information, see 'PutSlotType' .
pstrrsValueSelectionStrategy :: Lens' PutSlotTypeResponse (Maybe SlotValueSelectionStrategy)
pstrrsValueSelectionStrategy = lens _pstrrsValueSelectionStrategy (\s a -> s {_pstrrsValueSelectionStrategy = a})

-- | The version of the slot type. For a new slot type, the version is always @> LATEST@ .
pstrrsVersion :: Lens' PutSlotTypeResponse (Maybe Text)
pstrrsVersion = lens _pstrrsVersion (\s a -> s {_pstrrsVersion = a})

-- | The name of the slot type.
pstrrsName :: Lens' PutSlotTypeResponse (Maybe Text)
pstrrsName = lens _pstrrsName (\s a -> s {_pstrrsName = a})

-- | The built-in slot type used as the parent of the slot type.
pstrrsParentSlotTypeSignature :: Lens' PutSlotTypeResponse (Maybe Text)
pstrrsParentSlotTypeSignature = lens _pstrrsParentSlotTypeSignature (\s a -> s {_pstrrsParentSlotTypeSignature = a})

-- | @True@ if a new version of the slot type was created. If the @createVersion@ field was not specified in the request, the @createVersion@ field is set to false in the response.
pstrrsCreateVersion :: Lens' PutSlotTypeResponse (Maybe Bool)
pstrrsCreateVersion = lens _pstrrsCreateVersion (\s a -> s {_pstrrsCreateVersion = a})

-- | A description of the slot type.
pstrrsDescription :: Lens' PutSlotTypeResponse (Maybe Text)
pstrrsDescription = lens _pstrrsDescription (\s a -> s {_pstrrsDescription = a})

-- | Checksum of the @> LATEST@ version of the slot type.
pstrrsChecksum :: Lens' PutSlotTypeResponse (Maybe Text)
pstrrsChecksum = lens _pstrrsChecksum (\s a -> s {_pstrrsChecksum = a})

-- | -- | The response status code.
pstrrsResponseStatus :: Lens' PutSlotTypeResponse Int
pstrrsResponseStatus = lens _pstrrsResponseStatus (\s a -> s {_pstrrsResponseStatus = a})

instance NFData PutSlotTypeResponse

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.PutIntent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an intent or replaces an existing intent.
--
-- To define the interaction between the user and your bot, you use one or
-- more intents. For a pizza ordering bot, for example, you would create an
-- @OrderPizza@ intent.
--
-- To create an intent or replace an existing intent, you must provide the
-- following:
--
-- -   Intent name. For example, @OrderPizza@.
--
-- -   Sample utterances. For example, \"Can I order a pizza, please.\" and
--     \"I want to order a pizza.\"
--
-- -   Information to be gathered. You specify slot types for the
--     information that your bot will request from the user. You can
--     specify standard slot types, such as a date or a time, or custom
--     slot types such as the size and crust of a pizza.
--
-- -   How the intent will be fulfilled. You can provide a Lambda function
--     or configure the intent to return the intent information to the
--     client application. If you use a Lambda function, when all of the
--     intent information is available, Amazon Lex invokes your Lambda
--     function. If you configure your intent to return the intent
--     information to the client application.
--
-- You can specify other optional information in the request, such as:
--
-- -   A confirmation prompt to ask the user to confirm an intent. For
--     example, \"Shall I order your pizza?\"
--
-- -   A conclusion statement to send to the user after the intent has been
--     fulfilled. For example, \"I placed your pizza order.\"
--
-- -   A follow-up prompt that asks the user for additional activity. For
--     example, asking \"Do you want to order a drink with your pizza?\"
--
-- If you specify an existing intent name to update the intent, Amazon Lex
-- replaces the values in the @$LATEST@ version of the intent with the
-- values in the request. Amazon Lex removes fields that you don\'t provide
-- in the request. If you don\'t specify the required fields, Amazon Lex
-- throws an exception. When you update the @$LATEST@ version of an intent,
-- the @status@ field of any bot that uses the @$LATEST@ version of the
-- intent is set to @NOT_BUILT@.
--
-- For more information, see how-it-works.
--
-- This operation requires permissions for the @lex:PutIntent@ action.
module Network.AWS.LexModels.PutIntent
  ( -- * Creating a Request
    PutIntent (..),
    newPutIntent,

    -- * Request Lenses
    putIntent_kendraConfiguration,
    putIntent_parentIntentSignature,
    putIntent_dialogCodeHook,
    putIntent_conclusionStatement,
    putIntent_inputContexts,
    putIntent_rejectionStatement,
    putIntent_slots,
    putIntent_fulfillmentActivity,
    putIntent_createVersion,
    putIntent_sampleUtterances,
    putIntent_description,
    putIntent_confirmationPrompt,
    putIntent_outputContexts,
    putIntent_followUpPrompt,
    putIntent_checksum,
    putIntent_name,

    -- * Destructuring the Response
    PutIntentResponse (..),
    newPutIntentResponse,

    -- * Response Lenses
    putIntentResponse_kendraConfiguration,
    putIntentResponse_createdDate,
    putIntentResponse_parentIntentSignature,
    putIntentResponse_dialogCodeHook,
    putIntentResponse_conclusionStatement,
    putIntentResponse_lastUpdatedDate,
    putIntentResponse_inputContexts,
    putIntentResponse_version,
    putIntentResponse_rejectionStatement,
    putIntentResponse_name,
    putIntentResponse_slots,
    putIntentResponse_fulfillmentActivity,
    putIntentResponse_createVersion,
    putIntentResponse_sampleUtterances,
    putIntentResponse_description,
    putIntentResponse_confirmationPrompt,
    putIntentResponse_outputContexts,
    putIntentResponse_followUpPrompt,
    putIntentResponse_checksum,
    putIntentResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.LexModels.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutIntent' smart constructor.
data PutIntent = PutIntent'
  { -- | Configuration information required to use the
    -- @AMAZON.KendraSearchIntent@ intent to connect to an Amazon Kendra index.
    -- For more information, see
    -- <http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html AMAZON.KendraSearchIntent>.
    kendraConfiguration :: Prelude.Maybe KendraConfiguration,
    -- | A unique identifier for the built-in intent to base this intent on. To
    -- find the signature for an intent, see
    -- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents>
    -- in the /Alexa Skills Kit/.
    parentIntentSignature :: Prelude.Maybe Prelude.Text,
    -- | Specifies a Lambda function to invoke for each user input. You can
    -- invoke this Lambda function to personalize user interaction.
    --
    -- For example, suppose your bot determines that the user is John. Your
    -- Lambda function might retrieve John\'s information from a backend
    -- database and prepopulate some of the values. For example, if you find
    -- that John is gluten intolerant, you might set the corresponding intent
    -- slot, @GlutenIntolerant@, to true. You might find John\'s phone number
    -- and set the corresponding session attribute.
    dialogCodeHook :: Prelude.Maybe CodeHook,
    -- | The statement that you want Amazon Lex to convey to the user after the
    -- intent is successfully fulfilled by the Lambda function.
    --
    -- This element is relevant only if you provide a Lambda function in the
    -- @fulfillmentActivity@. If you return the intent to the client
    -- application, you can\'t specify this element.
    --
    -- The @followUpPrompt@ and @conclusionStatement@ are mutually exclusive.
    -- You can specify only one.
    conclusionStatement :: Prelude.Maybe Statement,
    -- | An array of @InputContext@ objects that lists the contexts that must be
    -- active for Amazon Lex to choose the intent in a conversation with the
    -- user.
    inputContexts :: Prelude.Maybe [InputContext],
    -- | When the user answers \"no\" to the question defined in
    -- @confirmationPrompt@, Amazon Lex responds with this statement to
    -- acknowledge that the intent was canceled.
    --
    -- You must provide both the @rejectionStatement@ and the
    -- @confirmationPrompt@, or neither.
    rejectionStatement :: Prelude.Maybe Statement,
    -- | An array of intent slots. At runtime, Amazon Lex elicits required slot
    -- values from the user using prompts defined in the slots. For more
    -- information, see how-it-works.
    slots :: Prelude.Maybe [Slot],
    -- | Required. Describes how the intent is fulfilled. For example, after a
    -- user provides all of the information for a pizza order,
    -- @fulfillmentActivity@ defines how the bot places an order with a local
    -- pizza store.
    --
    -- You might configure Amazon Lex to return all of the intent information
    -- to the client application, or direct it to invoke a Lambda function that
    -- can process the intent (for example, place an order with a pizzeria).
    fulfillmentActivity :: Prelude.Maybe FulfillmentActivity,
    -- | When set to @true@ a new numbered version of the intent is created. This
    -- is the same as calling the @CreateIntentVersion@ operation. If you do
    -- not specify @createVersion@, the default is @false@.
    createVersion :: Prelude.Maybe Prelude.Bool,
    -- | An array of utterances (strings) that a user might say to signal the
    -- intent. For example, \"I want {PizzaSize} pizza\", \"Order {Quantity}
    -- {PizzaSize} pizzas\".
    --
    -- In each utterance, a slot name is enclosed in curly braces.
    sampleUtterances :: Prelude.Maybe [Prelude.Text],
    -- | A description of the intent.
    description :: Prelude.Maybe Prelude.Text,
    -- | Prompts the user to confirm the intent. This question should have a yes
    -- or no answer.
    --
    -- Amazon Lex uses this prompt to ensure that the user acknowledges that
    -- the intent is ready for fulfillment. For example, with the @OrderPizza@
    -- intent, you might want to confirm that the order is correct before
    -- placing it. For other intents, such as intents that simply respond to
    -- user questions, you might not need to ask the user for confirmation
    -- before providing the information.
    --
    -- You you must provide both the @rejectionStatement@ and the
    -- @confirmationPrompt@, or neither.
    confirmationPrompt :: Prelude.Maybe Prompt,
    -- | An array of @OutputContext@ objects that lists the contexts that the
    -- intent activates when the intent is fulfilled.
    outputContexts :: Prelude.Maybe [OutputContext],
    -- | Amazon Lex uses this prompt to solicit additional activity after
    -- fulfilling an intent. For example, after the @OrderPizza@ intent is
    -- fulfilled, you might prompt the user to order a drink.
    --
    -- The action that Amazon Lex takes depends on the user\'s response, as
    -- follows:
    --
    -- -   If the user says \"Yes\" it responds with the clarification prompt
    --     that is configured for the bot.
    --
    -- -   if the user says \"Yes\" and continues with an utterance that
    --     triggers an intent it starts a conversation for the intent.
    --
    -- -   If the user says \"No\" it responds with the rejection statement
    --     configured for the the follow-up prompt.
    --
    -- -   If it doesn\'t recognize the utterance it repeats the follow-up
    --     prompt again.
    --
    -- The @followUpPrompt@ field and the @conclusionStatement@ field are
    -- mutually exclusive. You can specify only one.
    followUpPrompt :: Prelude.Maybe FollowUpPrompt,
    -- | Identifies a specific revision of the @$LATEST@ version.
    --
    -- When you create a new intent, leave the @checksum@ field blank. If you
    -- specify a checksum you get a @BadRequestException@ exception.
    --
    -- When you want to update a intent, set the @checksum@ field to the
    -- checksum of the most recent revision of the @$LATEST@ version. If you
    -- don\'t specify the @ checksum@ field, or if the checksum does not match
    -- the @$LATEST@ version, you get a @PreconditionFailedException@
    -- exception.
    checksum :: Prelude.Maybe Prelude.Text,
    -- | The name of the intent. The name is /not/ case sensitive.
    --
    -- The name can\'t match a built-in intent name, or a built-in intent name
    -- with \"AMAZON.\" removed. For example, because there is a built-in
    -- intent called @AMAZON.HelpIntent@, you can\'t create a custom intent
    -- called @HelpIntent@.
    --
    -- For a list of built-in intents, see
    -- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents>
    -- in the /Alexa Skills Kit/.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'PutIntent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kendraConfiguration', 'putIntent_kendraConfiguration' - Configuration information required to use the
-- @AMAZON.KendraSearchIntent@ intent to connect to an Amazon Kendra index.
-- For more information, see
-- <http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html AMAZON.KendraSearchIntent>.
--
-- 'parentIntentSignature', 'putIntent_parentIntentSignature' - A unique identifier for the built-in intent to base this intent on. To
-- find the signature for an intent, see
-- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents>
-- in the /Alexa Skills Kit/.
--
-- 'dialogCodeHook', 'putIntent_dialogCodeHook' - Specifies a Lambda function to invoke for each user input. You can
-- invoke this Lambda function to personalize user interaction.
--
-- For example, suppose your bot determines that the user is John. Your
-- Lambda function might retrieve John\'s information from a backend
-- database and prepopulate some of the values. For example, if you find
-- that John is gluten intolerant, you might set the corresponding intent
-- slot, @GlutenIntolerant@, to true. You might find John\'s phone number
-- and set the corresponding session attribute.
--
-- 'conclusionStatement', 'putIntent_conclusionStatement' - The statement that you want Amazon Lex to convey to the user after the
-- intent is successfully fulfilled by the Lambda function.
--
-- This element is relevant only if you provide a Lambda function in the
-- @fulfillmentActivity@. If you return the intent to the client
-- application, you can\'t specify this element.
--
-- The @followUpPrompt@ and @conclusionStatement@ are mutually exclusive.
-- You can specify only one.
--
-- 'inputContexts', 'putIntent_inputContexts' - An array of @InputContext@ objects that lists the contexts that must be
-- active for Amazon Lex to choose the intent in a conversation with the
-- user.
--
-- 'rejectionStatement', 'putIntent_rejectionStatement' - When the user answers \"no\" to the question defined in
-- @confirmationPrompt@, Amazon Lex responds with this statement to
-- acknowledge that the intent was canceled.
--
-- You must provide both the @rejectionStatement@ and the
-- @confirmationPrompt@, or neither.
--
-- 'slots', 'putIntent_slots' - An array of intent slots. At runtime, Amazon Lex elicits required slot
-- values from the user using prompts defined in the slots. For more
-- information, see how-it-works.
--
-- 'fulfillmentActivity', 'putIntent_fulfillmentActivity' - Required. Describes how the intent is fulfilled. For example, after a
-- user provides all of the information for a pizza order,
-- @fulfillmentActivity@ defines how the bot places an order with a local
-- pizza store.
--
-- You might configure Amazon Lex to return all of the intent information
-- to the client application, or direct it to invoke a Lambda function that
-- can process the intent (for example, place an order with a pizzeria).
--
-- 'createVersion', 'putIntent_createVersion' - When set to @true@ a new numbered version of the intent is created. This
-- is the same as calling the @CreateIntentVersion@ operation. If you do
-- not specify @createVersion@, the default is @false@.
--
-- 'sampleUtterances', 'putIntent_sampleUtterances' - An array of utterances (strings) that a user might say to signal the
-- intent. For example, \"I want {PizzaSize} pizza\", \"Order {Quantity}
-- {PizzaSize} pizzas\".
--
-- In each utterance, a slot name is enclosed in curly braces.
--
-- 'description', 'putIntent_description' - A description of the intent.
--
-- 'confirmationPrompt', 'putIntent_confirmationPrompt' - Prompts the user to confirm the intent. This question should have a yes
-- or no answer.
--
-- Amazon Lex uses this prompt to ensure that the user acknowledges that
-- the intent is ready for fulfillment. For example, with the @OrderPizza@
-- intent, you might want to confirm that the order is correct before
-- placing it. For other intents, such as intents that simply respond to
-- user questions, you might not need to ask the user for confirmation
-- before providing the information.
--
-- You you must provide both the @rejectionStatement@ and the
-- @confirmationPrompt@, or neither.
--
-- 'outputContexts', 'putIntent_outputContexts' - An array of @OutputContext@ objects that lists the contexts that the
-- intent activates when the intent is fulfilled.
--
-- 'followUpPrompt', 'putIntent_followUpPrompt' - Amazon Lex uses this prompt to solicit additional activity after
-- fulfilling an intent. For example, after the @OrderPizza@ intent is
-- fulfilled, you might prompt the user to order a drink.
--
-- The action that Amazon Lex takes depends on the user\'s response, as
-- follows:
--
-- -   If the user says \"Yes\" it responds with the clarification prompt
--     that is configured for the bot.
--
-- -   if the user says \"Yes\" and continues with an utterance that
--     triggers an intent it starts a conversation for the intent.
--
-- -   If the user says \"No\" it responds with the rejection statement
--     configured for the the follow-up prompt.
--
-- -   If it doesn\'t recognize the utterance it repeats the follow-up
--     prompt again.
--
-- The @followUpPrompt@ field and the @conclusionStatement@ field are
-- mutually exclusive. You can specify only one.
--
-- 'checksum', 'putIntent_checksum' - Identifies a specific revision of the @$LATEST@ version.
--
-- When you create a new intent, leave the @checksum@ field blank. If you
-- specify a checksum you get a @BadRequestException@ exception.
--
-- When you want to update a intent, set the @checksum@ field to the
-- checksum of the most recent revision of the @$LATEST@ version. If you
-- don\'t specify the @ checksum@ field, or if the checksum does not match
-- the @$LATEST@ version, you get a @PreconditionFailedException@
-- exception.
--
-- 'name', 'putIntent_name' - The name of the intent. The name is /not/ case sensitive.
--
-- The name can\'t match a built-in intent name, or a built-in intent name
-- with \"AMAZON.\" removed. For example, because there is a built-in
-- intent called @AMAZON.HelpIntent@, you can\'t create a custom intent
-- called @HelpIntent@.
--
-- For a list of built-in intents, see
-- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents>
-- in the /Alexa Skills Kit/.
newPutIntent ::
  -- | 'name'
  Prelude.Text ->
  PutIntent
newPutIntent pName_ =
  PutIntent'
    { kendraConfiguration = Prelude.Nothing,
      parentIntentSignature = Prelude.Nothing,
      dialogCodeHook = Prelude.Nothing,
      conclusionStatement = Prelude.Nothing,
      inputContexts = Prelude.Nothing,
      rejectionStatement = Prelude.Nothing,
      slots = Prelude.Nothing,
      fulfillmentActivity = Prelude.Nothing,
      createVersion = Prelude.Nothing,
      sampleUtterances = Prelude.Nothing,
      description = Prelude.Nothing,
      confirmationPrompt = Prelude.Nothing,
      outputContexts = Prelude.Nothing,
      followUpPrompt = Prelude.Nothing,
      checksum = Prelude.Nothing,
      name = pName_
    }

-- | Configuration information required to use the
-- @AMAZON.KendraSearchIntent@ intent to connect to an Amazon Kendra index.
-- For more information, see
-- <http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html AMAZON.KendraSearchIntent>.
putIntent_kendraConfiguration :: Lens.Lens' PutIntent (Prelude.Maybe KendraConfiguration)
putIntent_kendraConfiguration = Lens.lens (\PutIntent' {kendraConfiguration} -> kendraConfiguration) (\s@PutIntent' {} a -> s {kendraConfiguration = a} :: PutIntent)

-- | A unique identifier for the built-in intent to base this intent on. To
-- find the signature for an intent, see
-- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents>
-- in the /Alexa Skills Kit/.
putIntent_parentIntentSignature :: Lens.Lens' PutIntent (Prelude.Maybe Prelude.Text)
putIntent_parentIntentSignature = Lens.lens (\PutIntent' {parentIntentSignature} -> parentIntentSignature) (\s@PutIntent' {} a -> s {parentIntentSignature = a} :: PutIntent)

-- | Specifies a Lambda function to invoke for each user input. You can
-- invoke this Lambda function to personalize user interaction.
--
-- For example, suppose your bot determines that the user is John. Your
-- Lambda function might retrieve John\'s information from a backend
-- database and prepopulate some of the values. For example, if you find
-- that John is gluten intolerant, you might set the corresponding intent
-- slot, @GlutenIntolerant@, to true. You might find John\'s phone number
-- and set the corresponding session attribute.
putIntent_dialogCodeHook :: Lens.Lens' PutIntent (Prelude.Maybe CodeHook)
putIntent_dialogCodeHook = Lens.lens (\PutIntent' {dialogCodeHook} -> dialogCodeHook) (\s@PutIntent' {} a -> s {dialogCodeHook = a} :: PutIntent)

-- | The statement that you want Amazon Lex to convey to the user after the
-- intent is successfully fulfilled by the Lambda function.
--
-- This element is relevant only if you provide a Lambda function in the
-- @fulfillmentActivity@. If you return the intent to the client
-- application, you can\'t specify this element.
--
-- The @followUpPrompt@ and @conclusionStatement@ are mutually exclusive.
-- You can specify only one.
putIntent_conclusionStatement :: Lens.Lens' PutIntent (Prelude.Maybe Statement)
putIntent_conclusionStatement = Lens.lens (\PutIntent' {conclusionStatement} -> conclusionStatement) (\s@PutIntent' {} a -> s {conclusionStatement = a} :: PutIntent)

-- | An array of @InputContext@ objects that lists the contexts that must be
-- active for Amazon Lex to choose the intent in a conversation with the
-- user.
putIntent_inputContexts :: Lens.Lens' PutIntent (Prelude.Maybe [InputContext])
putIntent_inputContexts = Lens.lens (\PutIntent' {inputContexts} -> inputContexts) (\s@PutIntent' {} a -> s {inputContexts = a} :: PutIntent) Prelude.. Lens.mapping Prelude._Coerce

-- | When the user answers \"no\" to the question defined in
-- @confirmationPrompt@, Amazon Lex responds with this statement to
-- acknowledge that the intent was canceled.
--
-- You must provide both the @rejectionStatement@ and the
-- @confirmationPrompt@, or neither.
putIntent_rejectionStatement :: Lens.Lens' PutIntent (Prelude.Maybe Statement)
putIntent_rejectionStatement = Lens.lens (\PutIntent' {rejectionStatement} -> rejectionStatement) (\s@PutIntent' {} a -> s {rejectionStatement = a} :: PutIntent)

-- | An array of intent slots. At runtime, Amazon Lex elicits required slot
-- values from the user using prompts defined in the slots. For more
-- information, see how-it-works.
putIntent_slots :: Lens.Lens' PutIntent (Prelude.Maybe [Slot])
putIntent_slots = Lens.lens (\PutIntent' {slots} -> slots) (\s@PutIntent' {} a -> s {slots = a} :: PutIntent) Prelude.. Lens.mapping Prelude._Coerce

-- | Required. Describes how the intent is fulfilled. For example, after a
-- user provides all of the information for a pizza order,
-- @fulfillmentActivity@ defines how the bot places an order with a local
-- pizza store.
--
-- You might configure Amazon Lex to return all of the intent information
-- to the client application, or direct it to invoke a Lambda function that
-- can process the intent (for example, place an order with a pizzeria).
putIntent_fulfillmentActivity :: Lens.Lens' PutIntent (Prelude.Maybe FulfillmentActivity)
putIntent_fulfillmentActivity = Lens.lens (\PutIntent' {fulfillmentActivity} -> fulfillmentActivity) (\s@PutIntent' {} a -> s {fulfillmentActivity = a} :: PutIntent)

-- | When set to @true@ a new numbered version of the intent is created. This
-- is the same as calling the @CreateIntentVersion@ operation. If you do
-- not specify @createVersion@, the default is @false@.
putIntent_createVersion :: Lens.Lens' PutIntent (Prelude.Maybe Prelude.Bool)
putIntent_createVersion = Lens.lens (\PutIntent' {createVersion} -> createVersion) (\s@PutIntent' {} a -> s {createVersion = a} :: PutIntent)

-- | An array of utterances (strings) that a user might say to signal the
-- intent. For example, \"I want {PizzaSize} pizza\", \"Order {Quantity}
-- {PizzaSize} pizzas\".
--
-- In each utterance, a slot name is enclosed in curly braces.
putIntent_sampleUtterances :: Lens.Lens' PutIntent (Prelude.Maybe [Prelude.Text])
putIntent_sampleUtterances = Lens.lens (\PutIntent' {sampleUtterances} -> sampleUtterances) (\s@PutIntent' {} a -> s {sampleUtterances = a} :: PutIntent) Prelude.. Lens.mapping Prelude._Coerce

-- | A description of the intent.
putIntent_description :: Lens.Lens' PutIntent (Prelude.Maybe Prelude.Text)
putIntent_description = Lens.lens (\PutIntent' {description} -> description) (\s@PutIntent' {} a -> s {description = a} :: PutIntent)

-- | Prompts the user to confirm the intent. This question should have a yes
-- or no answer.
--
-- Amazon Lex uses this prompt to ensure that the user acknowledges that
-- the intent is ready for fulfillment. For example, with the @OrderPizza@
-- intent, you might want to confirm that the order is correct before
-- placing it. For other intents, such as intents that simply respond to
-- user questions, you might not need to ask the user for confirmation
-- before providing the information.
--
-- You you must provide both the @rejectionStatement@ and the
-- @confirmationPrompt@, or neither.
putIntent_confirmationPrompt :: Lens.Lens' PutIntent (Prelude.Maybe Prompt)
putIntent_confirmationPrompt = Lens.lens (\PutIntent' {confirmationPrompt} -> confirmationPrompt) (\s@PutIntent' {} a -> s {confirmationPrompt = a} :: PutIntent)

-- | An array of @OutputContext@ objects that lists the contexts that the
-- intent activates when the intent is fulfilled.
putIntent_outputContexts :: Lens.Lens' PutIntent (Prelude.Maybe [OutputContext])
putIntent_outputContexts = Lens.lens (\PutIntent' {outputContexts} -> outputContexts) (\s@PutIntent' {} a -> s {outputContexts = a} :: PutIntent) Prelude.. Lens.mapping Prelude._Coerce

-- | Amazon Lex uses this prompt to solicit additional activity after
-- fulfilling an intent. For example, after the @OrderPizza@ intent is
-- fulfilled, you might prompt the user to order a drink.
--
-- The action that Amazon Lex takes depends on the user\'s response, as
-- follows:
--
-- -   If the user says \"Yes\" it responds with the clarification prompt
--     that is configured for the bot.
--
-- -   if the user says \"Yes\" and continues with an utterance that
--     triggers an intent it starts a conversation for the intent.
--
-- -   If the user says \"No\" it responds with the rejection statement
--     configured for the the follow-up prompt.
--
-- -   If it doesn\'t recognize the utterance it repeats the follow-up
--     prompt again.
--
-- The @followUpPrompt@ field and the @conclusionStatement@ field are
-- mutually exclusive. You can specify only one.
putIntent_followUpPrompt :: Lens.Lens' PutIntent (Prelude.Maybe FollowUpPrompt)
putIntent_followUpPrompt = Lens.lens (\PutIntent' {followUpPrompt} -> followUpPrompt) (\s@PutIntent' {} a -> s {followUpPrompt = a} :: PutIntent)

-- | Identifies a specific revision of the @$LATEST@ version.
--
-- When you create a new intent, leave the @checksum@ field blank. If you
-- specify a checksum you get a @BadRequestException@ exception.
--
-- When you want to update a intent, set the @checksum@ field to the
-- checksum of the most recent revision of the @$LATEST@ version. If you
-- don\'t specify the @ checksum@ field, or if the checksum does not match
-- the @$LATEST@ version, you get a @PreconditionFailedException@
-- exception.
putIntent_checksum :: Lens.Lens' PutIntent (Prelude.Maybe Prelude.Text)
putIntent_checksum = Lens.lens (\PutIntent' {checksum} -> checksum) (\s@PutIntent' {} a -> s {checksum = a} :: PutIntent)

-- | The name of the intent. The name is /not/ case sensitive.
--
-- The name can\'t match a built-in intent name, or a built-in intent name
-- with \"AMAZON.\" removed. For example, because there is a built-in
-- intent called @AMAZON.HelpIntent@, you can\'t create a custom intent
-- called @HelpIntent@.
--
-- For a list of built-in intents, see
-- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents>
-- in the /Alexa Skills Kit/.
putIntent_name :: Lens.Lens' PutIntent Prelude.Text
putIntent_name = Lens.lens (\PutIntent' {name} -> name) (\s@PutIntent' {} a -> s {name = a} :: PutIntent)

instance Prelude.AWSRequest PutIntent where
  type Rs PutIntent = PutIntentResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutIntentResponse'
            Prelude.<$> (x Prelude..?> "kendraConfiguration")
            Prelude.<*> (x Prelude..?> "createdDate")
            Prelude.<*> (x Prelude..?> "parentIntentSignature")
            Prelude.<*> (x Prelude..?> "dialogCodeHook")
            Prelude.<*> (x Prelude..?> "conclusionStatement")
            Prelude.<*> (x Prelude..?> "lastUpdatedDate")
            Prelude.<*> ( x Prelude..?> "inputContexts"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "version")
            Prelude.<*> (x Prelude..?> "rejectionStatement")
            Prelude.<*> (x Prelude..?> "name")
            Prelude.<*> (x Prelude..?> "slots" Prelude..!@ Prelude.mempty)
            Prelude.<*> (x Prelude..?> "fulfillmentActivity")
            Prelude.<*> (x Prelude..?> "createVersion")
            Prelude.<*> ( x Prelude..?> "sampleUtterances"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "description")
            Prelude.<*> (x Prelude..?> "confirmationPrompt")
            Prelude.<*> ( x Prelude..?> "outputContexts"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "followUpPrompt")
            Prelude.<*> (x Prelude..?> "checksum")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutIntent

instance Prelude.NFData PutIntent

instance Prelude.ToHeaders PutIntent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON PutIntent where
  toJSON PutIntent' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("kendraConfiguration" Prelude..=)
              Prelude.<$> kendraConfiguration,
            ("parentIntentSignature" Prelude..=)
              Prelude.<$> parentIntentSignature,
            ("dialogCodeHook" Prelude..=)
              Prelude.<$> dialogCodeHook,
            ("conclusionStatement" Prelude..=)
              Prelude.<$> conclusionStatement,
            ("inputContexts" Prelude..=)
              Prelude.<$> inputContexts,
            ("rejectionStatement" Prelude..=)
              Prelude.<$> rejectionStatement,
            ("slots" Prelude..=) Prelude.<$> slots,
            ("fulfillmentActivity" Prelude..=)
              Prelude.<$> fulfillmentActivity,
            ("createVersion" Prelude..=)
              Prelude.<$> createVersion,
            ("sampleUtterances" Prelude..=)
              Prelude.<$> sampleUtterances,
            ("description" Prelude..=) Prelude.<$> description,
            ("confirmationPrompt" Prelude..=)
              Prelude.<$> confirmationPrompt,
            ("outputContexts" Prelude..=)
              Prelude.<$> outputContexts,
            ("followUpPrompt" Prelude..=)
              Prelude.<$> followUpPrompt,
            ("checksum" Prelude..=) Prelude.<$> checksum
          ]
      )

instance Prelude.ToPath PutIntent where
  toPath PutIntent' {..} =
    Prelude.mconcat
      ["/intents/", Prelude.toBS name, "/versions/$LATEST"]

instance Prelude.ToQuery PutIntent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutIntentResponse' smart constructor.
data PutIntentResponse = PutIntentResponse'
  { -- | Configuration information, if any, required to connect to an Amazon
    -- Kendra index and use the @AMAZON.KendraSearchIntent@ intent.
    kendraConfiguration :: Prelude.Maybe KendraConfiguration,
    -- | The date that the intent was created.
    createdDate :: Prelude.Maybe Prelude.POSIX,
    -- | A unique identifier for the built-in intent that this intent is based
    -- on.
    parentIntentSignature :: Prelude.Maybe Prelude.Text,
    -- | If defined in the intent, Amazon Lex invokes this Lambda function for
    -- each user input.
    dialogCodeHook :: Prelude.Maybe CodeHook,
    -- | After the Lambda function specified in the@fulfillmentActivity@intent
    -- fulfills the intent, Amazon Lex conveys this statement to the user.
    conclusionStatement :: Prelude.Maybe Statement,
    -- | The date that the intent was updated. When you create a resource, the
    -- creation date and last update dates are the same.
    lastUpdatedDate :: Prelude.Maybe Prelude.POSIX,
    -- | An array of @InputContext@ objects that lists the contexts that must be
    -- active for Amazon Lex to choose the intent in a conversation with the
    -- user.
    inputContexts :: Prelude.Maybe [InputContext],
    -- | The version of the intent. For a new intent, the version is always
    -- @$LATEST@.
    version :: Prelude.Maybe Prelude.Text,
    -- | If the user answers \"no\" to the question defined in
    -- @confirmationPrompt@ Amazon Lex responds with this statement to
    -- acknowledge that the intent was canceled.
    rejectionStatement :: Prelude.Maybe Statement,
    -- | The name of the intent.
    name :: Prelude.Maybe Prelude.Text,
    -- | An array of intent slots that are configured for the intent.
    slots :: Prelude.Maybe [Slot],
    -- | If defined in the intent, Amazon Lex invokes this Lambda function to
    -- fulfill the intent after the user provides all of the information
    -- required by the intent.
    fulfillmentActivity :: Prelude.Maybe FulfillmentActivity,
    -- | @True@ if a new version of the intent was created. If the
    -- @createVersion@ field was not specified in the request, the
    -- @createVersion@ field is set to false in the response.
    createVersion :: Prelude.Maybe Prelude.Bool,
    -- | An array of sample utterances that are configured for the intent.
    sampleUtterances :: Prelude.Maybe [Prelude.Text],
    -- | A description of the intent.
    description :: Prelude.Maybe Prelude.Text,
    -- | If defined in the intent, Amazon Lex prompts the user to confirm the
    -- intent before fulfilling it.
    confirmationPrompt :: Prelude.Maybe Prompt,
    -- | An array of @OutputContext@ objects that lists the contexts that the
    -- intent activates when the intent is fulfilled.
    outputContexts :: Prelude.Maybe [OutputContext],
    -- | If defined in the intent, Amazon Lex uses this prompt to solicit
    -- additional user activity after the intent is fulfilled.
    followUpPrompt :: Prelude.Maybe FollowUpPrompt,
    -- | Checksum of the @$LATEST@version of the intent created or updated.
    checksum :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'PutIntentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kendraConfiguration', 'putIntentResponse_kendraConfiguration' - Configuration information, if any, required to connect to an Amazon
-- Kendra index and use the @AMAZON.KendraSearchIntent@ intent.
--
-- 'createdDate', 'putIntentResponse_createdDate' - The date that the intent was created.
--
-- 'parentIntentSignature', 'putIntentResponse_parentIntentSignature' - A unique identifier for the built-in intent that this intent is based
-- on.
--
-- 'dialogCodeHook', 'putIntentResponse_dialogCodeHook' - If defined in the intent, Amazon Lex invokes this Lambda function for
-- each user input.
--
-- 'conclusionStatement', 'putIntentResponse_conclusionStatement' - After the Lambda function specified in the@fulfillmentActivity@intent
-- fulfills the intent, Amazon Lex conveys this statement to the user.
--
-- 'lastUpdatedDate', 'putIntentResponse_lastUpdatedDate' - The date that the intent was updated. When you create a resource, the
-- creation date and last update dates are the same.
--
-- 'inputContexts', 'putIntentResponse_inputContexts' - An array of @InputContext@ objects that lists the contexts that must be
-- active for Amazon Lex to choose the intent in a conversation with the
-- user.
--
-- 'version', 'putIntentResponse_version' - The version of the intent. For a new intent, the version is always
-- @$LATEST@.
--
-- 'rejectionStatement', 'putIntentResponse_rejectionStatement' - If the user answers \"no\" to the question defined in
-- @confirmationPrompt@ Amazon Lex responds with this statement to
-- acknowledge that the intent was canceled.
--
-- 'name', 'putIntentResponse_name' - The name of the intent.
--
-- 'slots', 'putIntentResponse_slots' - An array of intent slots that are configured for the intent.
--
-- 'fulfillmentActivity', 'putIntentResponse_fulfillmentActivity' - If defined in the intent, Amazon Lex invokes this Lambda function to
-- fulfill the intent after the user provides all of the information
-- required by the intent.
--
-- 'createVersion', 'putIntentResponse_createVersion' - @True@ if a new version of the intent was created. If the
-- @createVersion@ field was not specified in the request, the
-- @createVersion@ field is set to false in the response.
--
-- 'sampleUtterances', 'putIntentResponse_sampleUtterances' - An array of sample utterances that are configured for the intent.
--
-- 'description', 'putIntentResponse_description' - A description of the intent.
--
-- 'confirmationPrompt', 'putIntentResponse_confirmationPrompt' - If defined in the intent, Amazon Lex prompts the user to confirm the
-- intent before fulfilling it.
--
-- 'outputContexts', 'putIntentResponse_outputContexts' - An array of @OutputContext@ objects that lists the contexts that the
-- intent activates when the intent is fulfilled.
--
-- 'followUpPrompt', 'putIntentResponse_followUpPrompt' - If defined in the intent, Amazon Lex uses this prompt to solicit
-- additional user activity after the intent is fulfilled.
--
-- 'checksum', 'putIntentResponse_checksum' - Checksum of the @$LATEST@version of the intent created or updated.
--
-- 'httpStatus', 'putIntentResponse_httpStatus' - The response's http status code.
newPutIntentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutIntentResponse
newPutIntentResponse pHttpStatus_ =
  PutIntentResponse'
    { kendraConfiguration =
        Prelude.Nothing,
      createdDate = Prelude.Nothing,
      parentIntentSignature = Prelude.Nothing,
      dialogCodeHook = Prelude.Nothing,
      conclusionStatement = Prelude.Nothing,
      lastUpdatedDate = Prelude.Nothing,
      inputContexts = Prelude.Nothing,
      version = Prelude.Nothing,
      rejectionStatement = Prelude.Nothing,
      name = Prelude.Nothing,
      slots = Prelude.Nothing,
      fulfillmentActivity = Prelude.Nothing,
      createVersion = Prelude.Nothing,
      sampleUtterances = Prelude.Nothing,
      description = Prelude.Nothing,
      confirmationPrompt = Prelude.Nothing,
      outputContexts = Prelude.Nothing,
      followUpPrompt = Prelude.Nothing,
      checksum = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Configuration information, if any, required to connect to an Amazon
-- Kendra index and use the @AMAZON.KendraSearchIntent@ intent.
putIntentResponse_kendraConfiguration :: Lens.Lens' PutIntentResponse (Prelude.Maybe KendraConfiguration)
putIntentResponse_kendraConfiguration = Lens.lens (\PutIntentResponse' {kendraConfiguration} -> kendraConfiguration) (\s@PutIntentResponse' {} a -> s {kendraConfiguration = a} :: PutIntentResponse)

-- | The date that the intent was created.
putIntentResponse_createdDate :: Lens.Lens' PutIntentResponse (Prelude.Maybe Prelude.UTCTime)
putIntentResponse_createdDate = Lens.lens (\PutIntentResponse' {createdDate} -> createdDate) (\s@PutIntentResponse' {} a -> s {createdDate = a} :: PutIntentResponse) Prelude.. Lens.mapping Prelude._Time

-- | A unique identifier for the built-in intent that this intent is based
-- on.
putIntentResponse_parentIntentSignature :: Lens.Lens' PutIntentResponse (Prelude.Maybe Prelude.Text)
putIntentResponse_parentIntentSignature = Lens.lens (\PutIntentResponse' {parentIntentSignature} -> parentIntentSignature) (\s@PutIntentResponse' {} a -> s {parentIntentSignature = a} :: PutIntentResponse)

-- | If defined in the intent, Amazon Lex invokes this Lambda function for
-- each user input.
putIntentResponse_dialogCodeHook :: Lens.Lens' PutIntentResponse (Prelude.Maybe CodeHook)
putIntentResponse_dialogCodeHook = Lens.lens (\PutIntentResponse' {dialogCodeHook} -> dialogCodeHook) (\s@PutIntentResponse' {} a -> s {dialogCodeHook = a} :: PutIntentResponse)

-- | After the Lambda function specified in the@fulfillmentActivity@intent
-- fulfills the intent, Amazon Lex conveys this statement to the user.
putIntentResponse_conclusionStatement :: Lens.Lens' PutIntentResponse (Prelude.Maybe Statement)
putIntentResponse_conclusionStatement = Lens.lens (\PutIntentResponse' {conclusionStatement} -> conclusionStatement) (\s@PutIntentResponse' {} a -> s {conclusionStatement = a} :: PutIntentResponse)

-- | The date that the intent was updated. When you create a resource, the
-- creation date and last update dates are the same.
putIntentResponse_lastUpdatedDate :: Lens.Lens' PutIntentResponse (Prelude.Maybe Prelude.UTCTime)
putIntentResponse_lastUpdatedDate = Lens.lens (\PutIntentResponse' {lastUpdatedDate} -> lastUpdatedDate) (\s@PutIntentResponse' {} a -> s {lastUpdatedDate = a} :: PutIntentResponse) Prelude.. Lens.mapping Prelude._Time

-- | An array of @InputContext@ objects that lists the contexts that must be
-- active for Amazon Lex to choose the intent in a conversation with the
-- user.
putIntentResponse_inputContexts :: Lens.Lens' PutIntentResponse (Prelude.Maybe [InputContext])
putIntentResponse_inputContexts = Lens.lens (\PutIntentResponse' {inputContexts} -> inputContexts) (\s@PutIntentResponse' {} a -> s {inputContexts = a} :: PutIntentResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The version of the intent. For a new intent, the version is always
-- @$LATEST@.
putIntentResponse_version :: Lens.Lens' PutIntentResponse (Prelude.Maybe Prelude.Text)
putIntentResponse_version = Lens.lens (\PutIntentResponse' {version} -> version) (\s@PutIntentResponse' {} a -> s {version = a} :: PutIntentResponse)

-- | If the user answers \"no\" to the question defined in
-- @confirmationPrompt@ Amazon Lex responds with this statement to
-- acknowledge that the intent was canceled.
putIntentResponse_rejectionStatement :: Lens.Lens' PutIntentResponse (Prelude.Maybe Statement)
putIntentResponse_rejectionStatement = Lens.lens (\PutIntentResponse' {rejectionStatement} -> rejectionStatement) (\s@PutIntentResponse' {} a -> s {rejectionStatement = a} :: PutIntentResponse)

-- | The name of the intent.
putIntentResponse_name :: Lens.Lens' PutIntentResponse (Prelude.Maybe Prelude.Text)
putIntentResponse_name = Lens.lens (\PutIntentResponse' {name} -> name) (\s@PutIntentResponse' {} a -> s {name = a} :: PutIntentResponse)

-- | An array of intent slots that are configured for the intent.
putIntentResponse_slots :: Lens.Lens' PutIntentResponse (Prelude.Maybe [Slot])
putIntentResponse_slots = Lens.lens (\PutIntentResponse' {slots} -> slots) (\s@PutIntentResponse' {} a -> s {slots = a} :: PutIntentResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | If defined in the intent, Amazon Lex invokes this Lambda function to
-- fulfill the intent after the user provides all of the information
-- required by the intent.
putIntentResponse_fulfillmentActivity :: Lens.Lens' PutIntentResponse (Prelude.Maybe FulfillmentActivity)
putIntentResponse_fulfillmentActivity = Lens.lens (\PutIntentResponse' {fulfillmentActivity} -> fulfillmentActivity) (\s@PutIntentResponse' {} a -> s {fulfillmentActivity = a} :: PutIntentResponse)

-- | @True@ if a new version of the intent was created. If the
-- @createVersion@ field was not specified in the request, the
-- @createVersion@ field is set to false in the response.
putIntentResponse_createVersion :: Lens.Lens' PutIntentResponse (Prelude.Maybe Prelude.Bool)
putIntentResponse_createVersion = Lens.lens (\PutIntentResponse' {createVersion} -> createVersion) (\s@PutIntentResponse' {} a -> s {createVersion = a} :: PutIntentResponse)

-- | An array of sample utterances that are configured for the intent.
putIntentResponse_sampleUtterances :: Lens.Lens' PutIntentResponse (Prelude.Maybe [Prelude.Text])
putIntentResponse_sampleUtterances = Lens.lens (\PutIntentResponse' {sampleUtterances} -> sampleUtterances) (\s@PutIntentResponse' {} a -> s {sampleUtterances = a} :: PutIntentResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | A description of the intent.
putIntentResponse_description :: Lens.Lens' PutIntentResponse (Prelude.Maybe Prelude.Text)
putIntentResponse_description = Lens.lens (\PutIntentResponse' {description} -> description) (\s@PutIntentResponse' {} a -> s {description = a} :: PutIntentResponse)

-- | If defined in the intent, Amazon Lex prompts the user to confirm the
-- intent before fulfilling it.
putIntentResponse_confirmationPrompt :: Lens.Lens' PutIntentResponse (Prelude.Maybe Prompt)
putIntentResponse_confirmationPrompt = Lens.lens (\PutIntentResponse' {confirmationPrompt} -> confirmationPrompt) (\s@PutIntentResponse' {} a -> s {confirmationPrompt = a} :: PutIntentResponse)

-- | An array of @OutputContext@ objects that lists the contexts that the
-- intent activates when the intent is fulfilled.
putIntentResponse_outputContexts :: Lens.Lens' PutIntentResponse (Prelude.Maybe [OutputContext])
putIntentResponse_outputContexts = Lens.lens (\PutIntentResponse' {outputContexts} -> outputContexts) (\s@PutIntentResponse' {} a -> s {outputContexts = a} :: PutIntentResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | If defined in the intent, Amazon Lex uses this prompt to solicit
-- additional user activity after the intent is fulfilled.
putIntentResponse_followUpPrompt :: Lens.Lens' PutIntentResponse (Prelude.Maybe FollowUpPrompt)
putIntentResponse_followUpPrompt = Lens.lens (\PutIntentResponse' {followUpPrompt} -> followUpPrompt) (\s@PutIntentResponse' {} a -> s {followUpPrompt = a} :: PutIntentResponse)

-- | Checksum of the @$LATEST@version of the intent created or updated.
putIntentResponse_checksum :: Lens.Lens' PutIntentResponse (Prelude.Maybe Prelude.Text)
putIntentResponse_checksum = Lens.lens (\PutIntentResponse' {checksum} -> checksum) (\s@PutIntentResponse' {} a -> s {checksum = a} :: PutIntentResponse)

-- | The response's http status code.
putIntentResponse_httpStatus :: Lens.Lens' PutIntentResponse Prelude.Int
putIntentResponse_httpStatus = Lens.lens (\PutIntentResponse' {httpStatus} -> httpStatus) (\s@PutIntentResponse' {} a -> s {httpStatus = a} :: PutIntentResponse)

instance Prelude.NFData PutIntentResponse

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.CreateQualificationType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @CreateQualificationType@ operation creates a new Qualification type, which is represented by a @QualificationType@ data structure. 
module Network.AWS.MechanicalTurk.CreateQualificationType
    (
    -- * Creating a request
      CreateQualificationType (..)
    , mkCreateQualificationType
    -- ** Request lenses
    , cqtName
    , cqtDescription
    , cqtQualificationTypeStatus
    , cqtAnswerKey
    , cqtAutoGranted
    , cqtAutoGrantedValue
    , cqtKeywords
    , cqtRetryDelayInSeconds
    , cqtTest
    , cqtTestDurationInSeconds

    -- * Destructuring the response
    , CreateQualificationTypeResponse (..)
    , mkCreateQualificationTypeResponse
    -- ** Response lenses
    , cqtrrsQualificationType
    , cqtrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MechanicalTurk.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateQualificationType' smart constructor.
data CreateQualificationType = CreateQualificationType'
  { name :: Core.Text
    -- ^ The name you give to the Qualification type. The type name is used to represent the Qualification to Workers, and to find the type using a Qualification type search. It must be unique across all of your Qualification types.
  , description :: Core.Text
    -- ^ A long description for the Qualification type. On the Amazon Mechanical Turk website, the long description is displayed when a Worker examines a Qualification type.
  , qualificationTypeStatus :: Types.QualificationTypeStatus
    -- ^ The initial status of the Qualification type.
--
-- Constraints: Valid values are: Active | Inactive
  , answerKey :: Core.Maybe Core.Text
    -- ^ The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.
--
-- Constraints: Must not be longer than 65535 bytes.
-- Constraints: None. If not specified, you must process Qualification requests manually.
  , autoGranted :: Core.Maybe Core.Bool
    -- ^ Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.
--
-- Constraints: If the Test parameter is specified, this parameter cannot be true.
  , autoGrantedValue :: Core.Maybe Core.Int
    -- ^ The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.
  , keywords :: Core.Maybe Core.Text
    -- ^ One or more words or phrases that describe the Qualification type, separated by commas. The keywords of a type make the type easier to find during a search.
  , retryDelayInSeconds :: Core.Maybe Core.Integer
    -- ^ The number of seconds that a Worker must wait after requesting a Qualification of the Qualification type before the worker can retry the Qualification request.
--
-- Constraints: None. If not specified, retries are disabled and Workers can request a Qualification of this type only once, even if the Worker has not been granted the Qualification. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must delete existing retry-enabled Qualification type and then create a new Qualification type with retries disabled.
  , test :: Core.Maybe Core.Text
    -- ^ The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, @TestDurationInSeconds@ must also be specified. 
--
-- Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.
-- Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.
  , testDurationInSeconds :: Core.Maybe Core.Integer
    -- ^ The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateQualificationType' value with any optional fields omitted.
mkCreateQualificationType
    :: Core.Text -- ^ 'name'
    -> Core.Text -- ^ 'description'
    -> Types.QualificationTypeStatus -- ^ 'qualificationTypeStatus'
    -> CreateQualificationType
mkCreateQualificationType name description qualificationTypeStatus
  = CreateQualificationType'{name, description,
                             qualificationTypeStatus, answerKey = Core.Nothing,
                             autoGranted = Core.Nothing, autoGrantedValue = Core.Nothing,
                             keywords = Core.Nothing, retryDelayInSeconds = Core.Nothing,
                             test = Core.Nothing, testDurationInSeconds = Core.Nothing}

-- | The name you give to the Qualification type. The type name is used to represent the Qualification to Workers, and to find the type using a Qualification type search. It must be unique across all of your Qualification types.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtName :: Lens.Lens' CreateQualificationType Core.Text
cqtName = Lens.field @"name"
{-# INLINEABLE cqtName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | A long description for the Qualification type. On the Amazon Mechanical Turk website, the long description is displayed when a Worker examines a Qualification type.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtDescription :: Lens.Lens' CreateQualificationType Core.Text
cqtDescription = Lens.field @"description"
{-# INLINEABLE cqtDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The initial status of the Qualification type.
--
-- Constraints: Valid values are: Active | Inactive
--
-- /Note:/ Consider using 'qualificationTypeStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtQualificationTypeStatus :: Lens.Lens' CreateQualificationType Types.QualificationTypeStatus
cqtQualificationTypeStatus = Lens.field @"qualificationTypeStatus"
{-# INLINEABLE cqtQualificationTypeStatus #-}
{-# DEPRECATED qualificationTypeStatus "Use generic-lens or generic-optics with 'qualificationTypeStatus' instead"  #-}

-- | The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.
--
-- Constraints: Must not be longer than 65535 bytes.
-- Constraints: None. If not specified, you must process Qualification requests manually.
--
-- /Note:/ Consider using 'answerKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtAnswerKey :: Lens.Lens' CreateQualificationType (Core.Maybe Core.Text)
cqtAnswerKey = Lens.field @"answerKey"
{-# INLINEABLE cqtAnswerKey #-}
{-# DEPRECATED answerKey "Use generic-lens or generic-optics with 'answerKey' instead"  #-}

-- | Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.
--
-- Constraints: If the Test parameter is specified, this parameter cannot be true.
--
-- /Note:/ Consider using 'autoGranted' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtAutoGranted :: Lens.Lens' CreateQualificationType (Core.Maybe Core.Bool)
cqtAutoGranted = Lens.field @"autoGranted"
{-# INLINEABLE cqtAutoGranted #-}
{-# DEPRECATED autoGranted "Use generic-lens or generic-optics with 'autoGranted' instead"  #-}

-- | The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.
--
-- /Note:/ Consider using 'autoGrantedValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtAutoGrantedValue :: Lens.Lens' CreateQualificationType (Core.Maybe Core.Int)
cqtAutoGrantedValue = Lens.field @"autoGrantedValue"
{-# INLINEABLE cqtAutoGrantedValue #-}
{-# DEPRECATED autoGrantedValue "Use generic-lens or generic-optics with 'autoGrantedValue' instead"  #-}

-- | One or more words or phrases that describe the Qualification type, separated by commas. The keywords of a type make the type easier to find during a search.
--
-- /Note:/ Consider using 'keywords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtKeywords :: Lens.Lens' CreateQualificationType (Core.Maybe Core.Text)
cqtKeywords = Lens.field @"keywords"
{-# INLINEABLE cqtKeywords #-}
{-# DEPRECATED keywords "Use generic-lens or generic-optics with 'keywords' instead"  #-}

-- | The number of seconds that a Worker must wait after requesting a Qualification of the Qualification type before the worker can retry the Qualification request.
--
-- Constraints: None. If not specified, retries are disabled and Workers can request a Qualification of this type only once, even if the Worker has not been granted the Qualification. It is not possible to disable retries for a Qualification type after it has been created with retries enabled. If you want to disable retries, you must delete existing retry-enabled Qualification type and then create a new Qualification type with retries disabled.
--
-- /Note:/ Consider using 'retryDelayInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtRetryDelayInSeconds :: Lens.Lens' CreateQualificationType (Core.Maybe Core.Integer)
cqtRetryDelayInSeconds = Lens.field @"retryDelayInSeconds"
{-# INLINEABLE cqtRetryDelayInSeconds #-}
{-# DEPRECATED retryDelayInSeconds "Use generic-lens or generic-optics with 'retryDelayInSeconds' instead"  #-}

-- | The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, @TestDurationInSeconds@ must also be specified. 
--
-- Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.
-- Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.
--
-- /Note:/ Consider using 'test' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtTest :: Lens.Lens' CreateQualificationType (Core.Maybe Core.Text)
cqtTest = Lens.field @"test"
{-# INLINEABLE cqtTest #-}
{-# DEPRECATED test "Use generic-lens or generic-optics with 'test' instead"  #-}

-- | The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.
--
-- /Note:/ Consider using 'testDurationInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtTestDurationInSeconds :: Lens.Lens' CreateQualificationType (Core.Maybe Core.Integer)
cqtTestDurationInSeconds = Lens.field @"testDurationInSeconds"
{-# INLINEABLE cqtTestDurationInSeconds #-}
{-# DEPRECATED testDurationInSeconds "Use generic-lens or generic-optics with 'testDurationInSeconds' instead"  #-}

instance Core.ToQuery CreateQualificationType where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders CreateQualificationType where
        toHeaders CreateQualificationType{..}
          = Core.pure
              ("X-Amz-Target",
               "MTurkRequesterServiceV20170117.CreateQualificationType")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON CreateQualificationType where
        toJSON CreateQualificationType{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("Name" Core..= name),
                  Core.Just ("Description" Core..= description),
                  Core.Just
                    ("QualificationTypeStatus" Core..= qualificationTypeStatus),
                  ("AnswerKey" Core..=) Core.<$> answerKey,
                  ("AutoGranted" Core..=) Core.<$> autoGranted,
                  ("AutoGrantedValue" Core..=) Core.<$> autoGrantedValue,
                  ("Keywords" Core..=) Core.<$> keywords,
                  ("RetryDelayInSeconds" Core..=) Core.<$> retryDelayInSeconds,
                  ("Test" Core..=) Core.<$> test,
                  ("TestDurationInSeconds" Core..=) Core.<$> testDurationInSeconds])

instance Core.AWSRequest CreateQualificationType where
        type Rs CreateQualificationType = CreateQualificationTypeResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 CreateQualificationTypeResponse' Core.<$>
                   (x Core..:? "QualificationType") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkCreateQualificationTypeResponse' smart constructor.
data CreateQualificationTypeResponse = CreateQualificationTypeResponse'
  { qualificationType :: Core.Maybe Types.QualificationType
    -- ^ The created Qualification type, returned as a QualificationType data structure.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'CreateQualificationTypeResponse' value with any optional fields omitted.
mkCreateQualificationTypeResponse
    :: Core.Int -- ^ 'responseStatus'
    -> CreateQualificationTypeResponse
mkCreateQualificationTypeResponse responseStatus
  = CreateQualificationTypeResponse'{qualificationType =
                                       Core.Nothing,
                                     responseStatus}

-- | The created Qualification type, returned as a QualificationType data structure.
--
-- /Note:/ Consider using 'qualificationType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtrrsQualificationType :: Lens.Lens' CreateQualificationTypeResponse (Core.Maybe Types.QualificationType)
cqtrrsQualificationType = Lens.field @"qualificationType"
{-# INLINEABLE cqtrrsQualificationType #-}
{-# DEPRECATED qualificationType "Use generic-lens or generic-optics with 'qualificationType' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cqtrrsResponseStatus :: Lens.Lens' CreateQualificationTypeResponse Core.Int
cqtrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE cqtrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
